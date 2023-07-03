///Imports
#include <stdbool.h>
#include "pico/stdlib.h"
#include "vamk_config.h"
#include "vamk_key_state.h"
#include "vamk_layer_info.h"
#include "vamk_types.h"

///Static Global Variables
//TODO these properties should be made volatile if timer/alarm release
//code gets added.
static uint8_t _current_hid_report_codes[HID_REPORT_KEYCODE_ARRAY_LENGTH] = {0};
static uint8_t _current_report_code_quantity = 0;
static bool _code_has_single_report_lifetime[HID_REPORT_KEYCODE_ARRAY_LENGTH] = {0};
static uint8_t _current_modifier = 0;

static uint8_t _current_layer = 0;

///Static Functions
static bool contains_hid_report_code(uint8_t hid_keycode)
{
    for (int i = 0; i < HID_REPORT_KEYCODE_ARRAY_LENGTH; i++)
        if (_current_hid_report_codes[i] == hid_keycode)
            return true;
    return false;
}

static void insert_hid_report_code(struct hid_keycode_container_t keycode_container, bool release_on_next_report)
{
    // If this did not initialize correctly, something has gone wrong.
    hard_assert(keycode_container.has_valid_contents);

    // Check to make sure it's not already in the report.
    if (contains_hid_report_code(keycode_container.hid_keycode))
        return;

    // Insert the code into the report at the first available index.
    for (int i = 0; i < HID_REPORT_KEYCODE_ARRAY_LENGTH; i++)
    {
        if (_current_hid_report_codes[i] == 0)
        {
            _current_hid_report_codes[i] = keycode_container.hid_keycode;
            _code_has_single_report_lifetime[i] = release_on_next_report;
            _current_modifier = keycode_container.modifier;
            break;
        }
    }

}

static void remove_hid_report_code(uint8_t hid_keycode)
{
    for (int i = 0; i < HID_REPORT_KEYCODE_ARRAY_LENGTH; i++)
    {
        if (_current_hid_report_codes[i] == hid_keycode)
        {
            _current_hid_report_codes[i] = 0;
            _code_has_single_report_lifetime[i] = false;
            _current_modifier = 0;
        }
    }
}

///Global Functions
struct key_report_t key_state_build_hid_report(void)
{
    struct key_report_t key_report_to_send;
    for (int i = 0; i < HID_REPORT_KEYCODE_ARRAY_LENGTH; i++)
        key_report_to_send.keycodes[i] = _current_hid_report_codes[i];
    key_report_to_send.modifier = _current_modifier;

    return key_report_to_send;
}

uint8_t key_state_get_current_layer_index(void)
{
    return _current_layer;
}

void key_state_set_current_layer_index(uint8_t layer_index)
{
    _current_layer = layer_index;
}

void key_state_press(struct hid_keycode_container_t keycode_container, bool release_on_next_report)
{
    insert_hid_report_code(keycode_container, release_on_next_report);
}

void key_state_release(uint8_t hid_keycode)
{
    remove_hid_report_code(hid_keycode);
}
