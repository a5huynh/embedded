#include "roll.h"

int LAST_DICE_ROLL = -1;
int LAST_DICE = -1;

char dice_roll_str[4] = { 0, 0, 0, 0};

int _roll_dice(int size) {
    return (rand() % size) + 1;
}


void render_roll_screen(Adafruit_SSD1306 *display, bool key_state[][NUM_COLS]) {
    display->setTextSize(1);
    display->println("DICE ROLL");

    int size = 0;
    for (int row = 0; row < NUM_ROWS; row++) {
        for (int col = 0; col < NUM_COLS; col++) {
            if (key_state[row][col]) {
                switch (KEY_MATRIX[row][col]) {
                    case KEY_D4: size = 4; break;
                    case KEY_D6: size = 6; break;
                    case KEY_D8: size = 8; break;
                    case KEY_D10: size = 10; break;
                    case KEY_D12: size = 12; break;
                    case KEY_D20: size = 20; break;
                }

                if (size > 0 && size <= 20) {
                    LAST_DICE = size;
                    LAST_DICE_ROLL = _roll_dice(size);
                }
            }
        }
    }

    display->setCursor(0, 10);
    display->setTextSize(2);

    if (LAST_DICE_ROLL > 0) {
        char debug[4] = { 0, 0, 0, 0 };
        sprintf(debug, "d%d", LAST_DICE);
        display->println(debug);

        sprintf(dice_roll_str, "%d", LAST_DICE_ROLL);
        display->println(dice_roll_str);


    } else {
        display->println(F("No dice"));
    }
}