#ifndef DEBUG_H
#define DEBUB_H

#include <Adafruit_SSD1306.h>
#include "../constants.h"

void render_debug_screen(Adafruit_SSD1306 *, bool [][NUM_COLS]);

#endif