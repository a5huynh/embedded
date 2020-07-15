#include <Arduino.h>
#include <ArduinoJson.h>
#include <HTTPClient.h>
#include <TFT_eSPI.h>
#include <WiFi.h>
#include <WiFiMulti.h>

#include "constants.h"
#include "display/logo.h"
#include "display/screens.h"

#define LED     25
#define BTN_PIN 33

// NOTE: Use build flags to correctly set what PINs are used by the TFT library
TFT_eSPI tft = TFT_eSPI();
WiFiMulti wifi;

// Calculated using https://arduinojson.org/v6/assistant/ and an example from
// the API endpoint itself.
const int RESPONSE_SIZE = JSON_ARRAY_SIZE(1) + JSON_OBJECT_SIZE(18) + 671;

const int HASH_LENGTH = 41;
char HASH[HASH_LENGTH];

DynamicJsonDocument doc(RESPONSE_SIZE);

unsigned long LAST_UPDATED_TIME = LONG_MAX;
// Time delay until the next update read.
const unsigned long UPDATE_TIME_MS = 1 * 60 * 1000;

int SELECTED_SCREEN = 0;
CovidStats us_stats;

unsigned long BLINK_LAST_UPDATE = LONG_MAX;
void blink() {
    // turn the LED on (HIGH is the voltage level)
    digitalWrite(LED, HIGH);
    // wait for a second
    delay(1000);
    // turn the LED off by making the voltage LOW
    digitalWrite(LED, LOW);
}

void setup() {
    // Initialize pins
    pinMode(LED, OUTPUT);
    digitalWrite(LED, LOW);

    pinMode(BTN_PIN, INPUT_PULLUP);

    // Initialize Serial comm
    Serial.begin(9600);
    while (!Serial) continue;

    // Zero out hash
    memset(&HASH, 0, HASH_LENGTH);

    // Initalize screen.
    tft.init();
    tft.setRotation(1);
    BitHead2LCD(&tft);

    // Intialize wifi
    wifi.addAP(WIFI_SSID, WIFI_PASS);
    Serial.println("Setup done");
}

void update_tracker() {
    HTTPClient http;
    Serial.print("[HTTP] begin...\n");
    http.begin(COVID_API);

    int httpCode = http.GET();

    // Code will be negative on error
    if (httpCode > 0) {
        Serial.printf("[HTTP] GET %d\n", httpCode);

        if (httpCode == HTTP_CODE_OK) {
            Serial.printf("Deserializing JSON\n");

            String payload = http.getString();
            DeserializationError error = deserializeJson(doc, payload);
            if (error) {
                Serial.println("serialization failed");
                Serial.println(error.c_str());
            } else {
                // Success! Print out values

                // No need to refresh screen if the hash hasn't changed.
                const char* hash = doc[0]["hash"];
                if (memcmp(&HASH, hash, HASH_LENGTH) != 0) {
                    memcpy(&HASH, hash, HASH_LENGTH);

                    strncpy(us_stats.lastUpdated, doc[0]["lastModified"], 25);
                    us_stats.confirmed = doc[0]["positive"];
                    us_stats.recovered = doc[0]["recovered"];
                    us_stats.deaths = doc[0]["death"];
                }
            }
        }
    } else {
        Serial.printf("[HTTP] GET FAILED: %s\n", http.errorToString(httpCode).c_str());
    }

    http.end();
}

bool updateScreen = true;
void loop() {
    // TODO: Debounce button
    int buttonState = digitalRead(BTN_PIN);
    if (buttonState == LOW) {
        blink();
        SELECTED_SCREEN += 1;
        updateScreen = true;
        if (SELECTED_SCREEN > 1) {
            SELECTED_SCREEN = 0;
        }
    }

    if (wifi.run() == WL_CONNECTED) {
        // Should we check for an update?
        unsigned long currentTime = millis();
        if (currentTime - LAST_UPDATED_TIME >= UPDATE_TIME_MS) {
            LAST_UPDATED_TIME = currentTime;
            update_tracker();
        }
    }

    if (updateScreen) {
        if (SELECTED_SCREEN == 0) {
            render_usa_stats(&tft, &us_stats);
        } else {
            render_world_stats(&tft, NULL);
        }

        updateScreen = false;
    }
}