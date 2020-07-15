#include "constants.h"
#include "screens.h"

void render_usa_stats(TFT_eSPI *tft, CovidStats *data) {
    // clear screen
    tft->fillScreen(ILI9341_BLACK);
    tft->setTextColor(ILI9341_WHITE);

    // Render stats
    int cx = X_PADDING;
    int cy = Y_PADDING;
    tft->setCursor(cx, cy);
    tft->setTextSize(1);

    int fontHeight = tft->fontHeight() + LINE_PADDING;
    tft->setTextColor(ILI9341_RED);
    tft->printf("Last Updated: %s", data->lastUpdated);

    // Update font size for main data.
    cy += fontHeight;
    tft->setTextSize(2);
    fontHeight = tft->fontHeight() + LINE_PADDING;
    tft->setCursor(cx, cy);
    tft->setTextColor(ILI9341_CYAN);
    tft->print("US COVID-19 Tracker");

    cy += fontHeight;
    tft->setCursor(cx, cy);
    tft->setTextColor(ILI9341_WHITE);
    tft->printf("Confirmed: %ld", data->confirmed);

    cy += fontHeight;
    tft->setCursor(cx, cy);
    tft->printf("Deaths: %ld", data->deaths);

    cy += fontHeight;
    tft->setCursor(cx, cy);
    tft->printf("Recovered: %ld", data->recovered);
}

void render_world_stats(TFT_eSPI *tft, CovidStats *data) {
    tft->fillScreen(ILI9341_BLACK);
}