///Imports
#include <stddef.h>
#include <stdio.h>
#include "hardware/gpio.h"
#include "vamk_config.h"
#include "vamk_keymap_config.h"
#include "vamk_display_state.h"
#include "vamk_switch_state.h"
#include "vamk_types.h"

///Constants
#define ROW_COL_CYCLE_DELAY_US 200

///Static Global Variables
static uint8_t _switch_matrix_curr[ROW_COUNT][COLUMN_COUNT] = {0};
static uint8_t _switch_matrix_prev[ROW_COUNT][COLUMN_COUNT] = {0};

static switch_pressed_callback_t _pressed_callback = NULL;
static switch_released_callback_t _released_callback = NULL;

///Static Functions
static void read_matrix_state(void)
{
    for (uint16_t row = 0; row < ROW_COUNT; row++)
    {
        // Pull the row pins LOW. With the INPUT_PULLUP cols high and the diodes pointed
        // toward the rows, we will allow current to flow from Col->Row.
        uint8_t row_pin = ROWS[row];
        gpio_set_dir(row_pin, GPIO_OUT);
        gpio_pull_down(row_pin);

        for (uint16_t col = 0; col < COLUMN_COUNT; col++)
        {
            // Attempt connection to the row pin we just pulled down.
            // Should read zero if switch is pressed.
            uint8_t col_pin = COLS[col];
            gpio_set_dir(col_pin, GPIO_IN);
            gpio_pull_up(col_pin);
            sleep_us(ROW_COL_CYCLE_DELAY_US);

            _switch_matrix_curr[row][col] = gpio_get(COLS[col]);
            gpio_pull_down(col_pin);
            sleep_us(ROW_COL_CYCLE_DELAY_US);
        }

        // Disable the row output.
        gpio_set_dir(row_pin, GPIO_IN);
        gpio_pull_up(row_pin);
    }
}

static void update_prev_matrix(void)
{
    for (uint16_t i = 0; i < ROW_COUNT; i++)
    {
        for (uint16_t j = 0; j < COLUMN_COUNT; j++)
        {
            _switch_matrix_prev[i][j] = _switch_matrix_curr[i][j];
        }
    }
}

static void fire_callback_events(void)
{
    for (uint16_t i = 0; i < ROW_COUNT; i++)
    {
        for (uint16_t j = 0; j < COLUMN_COUNT; j++)
        {
            uint8_t switchCurrPress = _switch_matrix_curr[i][j];
            uint8_t switchPrevPress = _switch_matrix_prev[i][j];
            if (switchCurrPress != switchPrevPress)
            {
                if (switchCurrPress == SWITCH_PRESSED_VALUE &&
                    switchPrevPress == SWITCH_NOT_PRESSED_VALUE)
                {
                    // Wake our display on any key press.
                    display_reset_sleep_timeout();

                    // We started pressing a key.
                    if (_pressed_callback != NULL)
                        _pressed_callback(i, j, CONTROLLER_IDENTIFIER);
                }
                else
                {
                    // We released a key.
                    if (_released_callback != NULL)
                        _released_callback(i, j, CONTROLLER_IDENTIFIER);
                }
            }
        }
    }
}

static void print_matrix_state(void)
{
    static uint32_t report_id = 0;
    for (uint16_t i = 0; i < ROW_COUNT; i++)
    {
        printf("%uN0%i:", report_id, i);
        for (uint16_t j = 0; j < COLUMN_COUNT; j++)
        {
            printf("%i", _switch_matrix_curr[i][j]);
        }
        printf("\n");
    }
    report_id++;
}

///Extern Functions
void switch_state_init(void)
{
    // Init all the row and column gpio pins.
    for(uint16_t i = 0; i < ROW_COUNT; i++)
    {
        uint8_t row_pin = ROWS[i];
        gpio_init(row_pin);
    }

    for (uint16_t i = 0; i < COLUMN_COUNT; i++)
    {
        uint8_t col_pin = COLS[i];
        gpio_init(col_pin);
    }

    //Load the default switch state into each array.
    read_matrix_state();
    update_prev_matrix();
}

//void switch_state_task(void)
//{
//    read_matrix_state();
//    fire_callback_events();
//
//    update_prev_matrix();
//
//    if (SWITCH_TESTING_MODE)
//    {
//        //TODO this sleep suspends the USB device. REMOVE WHEN REPORTING IS NEEDED.
//        //sleep_ms(500);
//
//        print_matrix_state();
//    }
//}

void switch_state_task_update(void)
{
    read_matrix_state();
}

void switch_state_task_process(void)
{
    fire_callback_events();
}

void switch_state_task_finalize(void)
{
    update_prev_matrix();

    if (SWITCH_TESTING_MODE)
    {
        //TODO this sleep suspends the USB device. REMOVE WHEN REPORTING IS NEEDED.
        //sleep_ms(500);

        print_matrix_state();
    }
}

void switch_state_set_pressed_callback(switch_pressed_callback_t pressed_callback)
{
    _pressed_callback = pressed_callback;
}

void switch_state_set_released_callback(switch_released_callback_t released_callback)
{
    _released_callback = released_callback;
}

