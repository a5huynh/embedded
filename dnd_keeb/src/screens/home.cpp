#include "home.h"
#include "../constants.h"

void render_home_screen(Adafruit_SSD1306 *display) {
    display->setTextSize(1);
    display->println("HOME");

    // Center of screen.
    int x_coord = SCREEN_WIDTH / 2 - D20_ICON_WIDTH / 2;
    display->drawBitmap(
        x_coord,
        0,
        D20_ICON,
        D20_ICON_WIDTH, D20_ICON_HEIGHT,
        SSD1306_WHITE
    );

}