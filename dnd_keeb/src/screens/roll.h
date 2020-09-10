#ifndef ROLL_H
#define ROLL_H

#include <Adafruit_SSD1306.h>
#include "../constants.h"

void render_roll_screen(Adafruit_SSD1306 *, bool [][NUM_COLS]);

#endif