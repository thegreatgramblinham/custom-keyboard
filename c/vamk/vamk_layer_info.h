// Protect from multiple includes
#ifndef VAMK_LAYER_INFO_H
#define VAMK_LAYER_INFO_H

///Imports
#include "pico/stdlib.h"
#include "vamk_types.h"

///Function Declarations
hid_keycode_container_t layer_info_get_keycode_at(
    uint8_t row, uint8_t col, uint8_t layer_index, keyboard_side_t keyboard_side);

#endif
