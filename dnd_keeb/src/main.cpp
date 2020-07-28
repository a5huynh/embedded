#include <Arduino.h>

enum KEYS {
    KEY_D4,
    KEY_D6,
    KEY_D8,
    KEY_D10,
    KEY_D12,
    KEY_D20,
    KEY_PLUS1,
    KEY_CLEAR,
    KEY_EXTRA
};

const int ROW_PINS[] = {2, 4, 6};
const int NUM_ROWS = sizeof(ROW_PINS) / sizeof(ROW_PINS[0]);

const int COL_PINS[] = {10, 11, 12};
const int NUM_COLS = sizeof(COL_PINS) / sizeof(COL_PINS[0]);

void initializeMatrix() {
    // Setup keyboard matrix
    for(int i = 0; i < NUM_ROWS; i++) {
        pinMode(ROW_PINS[i], INPUT);
    }

    for(int i = 0; i < NUM_COLS; i++) {
        pinMode(COL_PINS[i], OUTPUT);
        digitalWrite(COL_PINS[i], LOW);
    }
}

void printRow() {
    for(int i = 0; i < NUM_ROWS; i++) {
        Serial.print(digitalRead(ROW_PINS[i]));
        Serial.print(" ");
    }

    Serial.println();
}

void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    digitalWrite(LED_BUILTIN, LOW);

    initializeMatrix();

    Serial.begin(9600);
}

void loop() {
    digitalWrite(LED_BUILTIN, LOW);
    delay(500);
    digitalWrite(LED_BUILTIN, HIGH);
    delay(500);

    for(int col = 0; col < NUM_COLS; col++) {
        // Select row
        digitalWrite(COL_PINS[col], HIGH);
        printRow();
        digitalWrite(COL_PINS[col], LOW);
    }

    Serial.println("-------");
}