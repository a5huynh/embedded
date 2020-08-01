#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Wire.h>

/// Display configuration
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

#define OLED_RESET -1
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

/// Keyboard configuration
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


// keyed by: [row][col]
const int KEY_MATRIX[3][3] = {
    { KEY_D4, KEY_D6, KEY_D8 },
    { KEY_D10, KEY_D12, KEY_D20 },
    { KEY_PLUS1, KEY_CLEAR, KEY_EXTRA }
};

/// True if the key is down, false otherwise.
bool KEY_STATE[3][3];
bool HAS_PRESSED = false;
int LAST_DICE_ROLL = -1;

const int ROW_PINS[] = {2, 4, 6};
const int NUM_ROWS = sizeof(ROW_PINS) / sizeof(ROW_PINS[0]);

const int COL_PINS[] = {10, 12};
const int NUM_COLS = sizeof(COL_PINS) / sizeof(COL_PINS[0]);

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
        pinMode(COL_PINS[i], OUTPUT);
        digitalWrite(COL_PINS[i], LOW);
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

void printKBState() {
    for(int row = 0; row < NUM_ROWS; row++) {
        for (int col = 0; col < NUM_COLS; col++) {
            if (KEY_STATE[row][col]) {
                display.print(1);
            } else {
                display.print(0);
            }
            display.print(F(" "));
        }
        display.println();
    }
}

int rollDice(int size) {
    return (rand() % size) + 1;
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

    HAS_PRESSED = false;
    Serial.println("scanning kb");

    for(int col = 0; col < NUM_COLS; col++) {
        // Select column
        digitalWrite(COL_PINS[col], HIGH);
        // Check each row
        Serial.println("read row state");
        readRowState(col);
        digitalWrite(COL_PINS[col], LOW);
        delay(50);
    }

    Serial.println("drawing state");
    printKBState();

    // Any keys pressed?
    if (HAS_PRESSED) {
        for (int row = 0; row < NUM_ROWS; row++) {
            for (int col = 0; col < NUM_COLS; col++) {
                if (KEY_STATE[row][col]) {
                    int size = 0;
                    switch (KEY_MATRIX[row][col]) {
                        case KEY_D4: size = 4; break;
                        case KEY_D6: size = 6; break;
                        case KEY_D8: size = 8; break;
                        case KEY_D10: size = 10; break;
                        case KEY_D12: size = 12; break;
                        case KEY_D20: size = 20; break;
                        default: size = 100;
                    }
                    LAST_DICE_ROLL = rollDice(size);
                }
            }
        }
    }

    if (LAST_DICE_ROLL > 0) {
        display.println(LAST_DICE_ROLL);
    } else {
        display.println(F("No dice"));
    }

    display.display();
}