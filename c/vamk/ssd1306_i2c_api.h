#ifndef SSD1306_I2C_API_H
#define SSD1306_I2C_API_H

///Imports
#include <string.h>
#include <stdlib.h>
#include "pico/stdlib.h"
#include "vamk_config.h"

///Constants
// Define the size of the display we have attached. This can vary, make sure you
// have the right size defined or the output will look rather odd!
// Code has been tested on 128x32 and 128x64 OLED displays
#define SSD1306_HEIGHT              OLED_SCREEN_HEIGHT
#define SSD1306_WIDTH               OLED_SCREEN_WIDTH

//TODO this may need to be an parameter... (or multiple)
#define SSD1306_I2C_ADDR            _u(0x3C)

#define SSD1306_I2C_CLK             I2C_CLOCK_SPEED

// commands (see datasheet)
#define SSD1306_SET_MEM_MODE        _u(0x20)
#define SSD1306_SET_COL_ADDR        _u(0x21)
#define SSD1306_SET_PAGE_ADDR       _u(0x22)
#define SSD1306_SET_HORIZ_SCROLL    _u(0x26)
#define SSD1306_SET_SCROLL          _u(0x2E)

#define SSD1306_SET_DISP_START_LINE _u(0x40)

#define SSD1306_SET_CONTRAST        _u(0x81)
#define SSD1306_SET_CHARGE_PUMP     _u(0x8D)

#define SSD1306_SET_SEG_REMAP       _u(0xA0)
#define SSD1306_SET_ENTIRE_ON       _u(0xA4)
#define SSD1306_SET_ALL_ON          _u(0xA5)
#define SSD1306_SET_NORM_DISP       _u(0xA6)
#define SSD1306_SET_INV_DISP        _u(0xA7)
#define SSD1306_SET_MUX_RATIO       _u(0xA8)
#define SSD1306_SET_DISP            _u(0xAE)
#define SSD1306_SET_COM_OUT_DIR     _u(0xC0)
#define SSD1306_SET_COM_OUT_DIR_FLIP _u(0xC0)

#define SSD1306_SET_DISP_OFFSET     _u(0xD3)
#define SSD1306_SET_DISP_CLK_DIV    _u(0xD5)
#define SSD1306_SET_PRECHARGE       _u(0xD9)
#define SSD1306_SET_COM_PIN_CFG     _u(0xDA)
#define SSD1306_SET_VCOM_DESEL      _u(0xDB)

#define SSD1306_PAGE_HEIGHT         _u(8)
#define SSD1306_NUM_PAGES           (SSD1306_HEIGHT / SSD1306_PAGE_HEIGHT)
#define SSD1306_BUF_LEN             (SSD1306_NUM_PAGES * SSD1306_WIDTH)

#define SSD1306_WRITE_MODE         _u(0xFE)
#define SSD1306_READ_MODE          _u(0xFF)

///Type Definitions
struct render_area_t
{
    uint8_t start_col;
    uint8_t end_col;
    uint8_t start_page;
    uint8_t end_page;

    int buffer_length;
};

///Function Definitions
void ssd1306_init(void);
struct render_area_t ssd1306_build_default_full_render_area_for_display(void);
void ssd1306_render(uint8_t *buf, struct render_area_t *area);
void ssd1306_clear_display(void);
void ssd1306_buffer_set_pixel(uint8_t *buf, int x, int y, bool on);
void ssd1306_buffer_draw_line(uint8_t *buf, int x0, int y0, int x1, int y1, bool on);

#endif
