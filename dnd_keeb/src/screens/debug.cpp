#include "debug.h"

void render_debug_screen(Adafruit_SSD1306 *display, bool key_state[][NUM_COLS]) {
    display->setTextSize(1);
    display->println("DEBUG");

    display->setCursor(0, 10);
    display->setTextSize(2);

    for(int row = 0; row < NUM_ROWS; row++) {
        for (int col = 0; col < NUM_COLS; col++) {
            if (key_state[row][col]) {
                display->print(1);
            } else {
                display->print(0);
            }
            display->print(F(" "));
        }
        display->println();
    }
}