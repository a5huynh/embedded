#ifndef CONSTANTS_H
#define CONSTANTS_H

/// Display configuration
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

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

// Keyboard layout, keyed by: [row][col]
const int KEY_MATRIX[3][3] = {
    { KEY_D20, KEY_D12, KEY_D10 },
    { KEY_D8, KEY_D6, KEY_D4 },
    { KEY_PLUS1, KEY_CLEAR, KEY_EXTRA }
};

/// Different screens we can page through.
enum SCREENS {
    SCREEN_HOME,
    SCREEN_DEBUG,
    SCREEN_ROLL
};

const int ROW_PINS[] = {12, 11, 10};
const int NUM_ROWS = sizeof(ROW_PINS) / sizeof(ROW_PINS[0]);

const int COL_PINS[] = {6, 5, 4};
const int NUM_COLS = sizeof(COL_PINS) / sizeof(COL_PINS[0]);

#endif