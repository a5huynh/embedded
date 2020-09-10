#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Wire.h>

#include "constants.h"
#include "icons.h"

#include "screens/debug.h"
#include "screens/home.h"
#include "screens/roll.h"

#define OLED_RESET -1
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

int CURRENT_SCREEN = SCREEN_HOME;

int SCAN_DELAY_MS = 20;

/// True if the key is down, false otherwise.
bool KEY_STATE[3][3];
bool HAS_PRESSED = false;

void initializeDisplay() {
    // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
    if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3D for 128x64
        Serial.println(F("SSD1306 allocation failed"));
        for(;;); // Don't proceed, loop forever
    }

    display.display();
    display.setTextSize(2);
    display.setTextColor(SSD1306_WHITE);
}

void initializeMatrix() {
    // Setup keyboard matrix
    for(int i = 0; i < NUM_ROWS; i++) {
        pinMode(ROW_PINS[i], INPUT);
    }

    for(int i = 0; i < NUM_COLS; i++) {
        pinMode(COL_PINS[i], INPUT);
    }

    // initialize keyboard state
    for (int row = 0; row < NUM_ROWS; row++) {
        for (int col = 0; col < NUM_COLS; col++) {
            KEY_STATE[row][col] = false;
        }
    }
}

void readRowState(int col) {
    for(int row = 0; row < NUM_ROWS; row++) {
        if (digitalRead(ROW_PINS[row]) == HIGH) {
            KEY_STATE[row][col] = true;
            HAS_PRESSED = true;
        } else {
            KEY_STATE[row][col] = false;
        }
    }
}

void setup() {
    Serial.begin(9600);

    initializeMatrix();
    initializeDisplay();
    Serial.println("finished init");
}

void loop() {
    display.clearDisplay();
    display.setCursor(0, 0);

    /// What screen should w render?
    switch (CURRENT_SCREEN) {
        case SCREEN_DEBUG:
            render_debug_screen(&display, KEY_STATE); break;
        case SCREEN_HOME:
            render_home_screen(&display); break;
        case SCREEN_ROLL:
            render_roll_screen(&display, KEY_STATE); break;
    }

    /// Run keyboard scan
    Serial.println("scanning kb");
    HAS_PRESSED = false;
    for(int col = 0; col < NUM_COLS; col++) {
        // Select column
        pinMode(COL_PINS[col], OUTPUT);
        digitalWrite(COL_PINS[col], HIGH);
        // Check each row
        readRowState(col);
        digitalWrite(COL_PINS[col], LOW);
        pinMode(COL_PINS[col], INPUT);
        // Delay next scan
        delay(SCAN_DELAY_MS);
    }

    /// Handle screen change
    if (HAS_PRESSED && KEY_STATE[2][2]) {
        switch (CURRENT_SCREEN) {
            case SCREEN_HOME:
                CURRENT_SCREEN = SCREEN_ROLL; break;
            case SCREEN_ROLL:
                CURRENT_SCREEN = SCREEN_DEBUG; break;
            case SCREEN_DEBUG:
                CURRENT_SCREEN = SCREEN_HOME; break;
        }
    }

    display.display();
}