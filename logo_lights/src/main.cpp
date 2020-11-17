#include <Arduino.h>
#include "FastLED.h"

#include <ESP8266WiFi.h>
#include <ESPAsyncTCP.h>
#include "ESPAsyncWebServer.h"

#include "constants.h"

#define ESP8266_BAUD 9600

// Built-in PIN = 1
#define BUILT_IN_LED_PIN 1
#define LED_PIN 1

//#define NUM_LEDS 7
#define NUM_LEDS 1
#define DATA_PIN 2
#define DELAY_MS 500

AsyncWebServer server(80);

// Pin outs
// 1 - GPIO1 (TX)
// 2 - GPIO2
// 3 - GPIO3 (RX)

// SoftwareSerial EspSerial(2, 3); // RX, TX
CRGB leds[NUM_LEDS];

bool HAS_ERROR = false;

bool DISCO_MODE = false;
int RAINBOW_POS = 0;
const int RAINBOW_LEN = 7;
const CRGB::HTMLColorCode RAINBOW_COLORS[RAINBOW_LEN] = {
    CRGB::Red,
    CRGB::Orange,
    CRGB::Yellow,
    CRGB::Green,
    CRGB::Blue,
    CRGB::Indigo,
    CRGB::Violet
};

CRGB::HTMLColorCode baseColor = CRGB::White;

void notFound(AsyncWebServerRequest *request) {
    request->send(404, "text/plain", "Not found");
}

void changeColor(CRGB::HTMLColorCode color) {
    for (int i = 0; i < NUM_LEDS; i++) {
        leds[i] = color;
    }
    FastLED.show();
    delay(DELAY_MS);
}

void blink(CRGB::HTMLColorCode color, int delay_ms = 1000) {
    changeColor(color);
    delay(delay_ms);
    changeColor(CRGB::Black);
    delay(delay_ms);
}

void disco() {
    blink(RAINBOW_COLORS[RAINBOW_POS], 200);
    RAINBOW_POS += 1;
    // Loop around once we get to the end of the rainbow.
    if (RAINBOW_POS >= RAINBOW_LEN) {
        RAINBOW_POS = 0;
    }
}

void setup() {
    // Setup LEDs
    FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);
    changeColor(CRGB::White);

    WiFi.mode(WIFI_STA);
    WiFi.begin(WIFI_SSID, WIFI_PASS);
    if (WiFi.waitForConnectResult() != WL_CONNECTED) {
        HAS_ERROR = true;
    }

    server.on("/", HTTP_GET, [](AsyncWebServerRequest *req) {
        req->send(200, "text/plain", "Huck Logo");
    });

    server.on("/mode/disco", HTTP_GET, [](AsyncWebServerRequest *req) {
        req->send(200, "text/plain", "Done.");
        DISCO_MODE = true;
    });

    server.on("/mode/norm", HTTP_GET, [](AsyncWebServerRequest *req) {
        req->send(200, "text/plain", "Done.");
        DISCO_MODE = false;
    });

    server.on("/color/red", HTTP_GET, [](AsyncWebServerRequest *req) {
        req->send(200, "text/plain", "Done.");
        baseColor = CRGB::Red;
    });

    server.on("/color/purp", HTTP_GET, [](AsyncWebServerRequest *req) {
        req->send(200, "text/plain", "Done.");
        baseColor = CRGB::BlueViolet;
    });

    server.onNotFound(notFound);
    server.begin();
}

void loop() {
    if (!HAS_ERROR) {
        if (DISCO_MODE) {
            disco();
        } else {
            blink(baseColor);
        }
    } else {
        blink(CRGB::Red);
    }
}