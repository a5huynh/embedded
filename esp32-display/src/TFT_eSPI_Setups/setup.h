#define ILI9341_DRIVER
#define TFT_WIDTH  240
#define TFT_HEIGHT 320

// Touch screen functionality
// ------------------------------
// Touch screen interrupt signal
// #define T_IRQ 0
// // Touch SPI bus output
// #define T_DO  0
// // Touch SPI bus input
// #define T_DIN 0
// Touch screen chip select signal
// #define TOUCH_CS    15
// Touch SPI bus clock signals
// #define T_CLK 0
// ------------------------------
// SPI bus read data signal
#define TFT_MISO    19
// Backlight control
// #define LED   0
// SPI bus clock signal
#define TFT_SCLK    18
// SPI bus write data signal
#define TFT_MOSI    23
// LCD register / data selection
#define TFT_DC      22
// LCD reset signal
#define TFT_RST     21
// LCD chip select signal
#define TFT_CS      5