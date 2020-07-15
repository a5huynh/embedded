#ifndef SCREENS_H
#define SCREENS_H

#include <ArduinoJson.h>
#include <TFT_eSPI.h>

struct CovidStats {
    char lastUpdated[25];
    long confirmed;
    long recovered;
    long deaths;
};

void render_usa_stats(TFT_eSPI *, CovidStats *);
void render_world_stats(TFT_eSPI *, CovidStats *);

#endif
