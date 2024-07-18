
///Imports
#include "hardware/i2c.h"
#include "hardware_gpio/gpio.h"
#include "pico/stdlib.h"
#include "pmw3360_spi_api.h"

///Local Declarations
///Static Constants
#define STARTUP_SLEEP_US 50

///Static Global Variables
///Static Functions

///Extern Functions
uint8_t pmw3360_read_register(uint8_t register_address)
{
    // TODO here
}

bool pmw3360_write_register(uint8_t register_address, uint8_t register_value)
{
}

void pmw3360_init(void)
{
    spi_init(SPI_INSTANCE, TARGET_BAUDRATE_HZ);

    gpio_set_function(4, GPIO_FUNC_SPI);
    gpio_set_function(5, GPIO_FUNC_SPI);
    gpio_set_function(6, GPIO_FUNC_SPI);
    gpio_set_function(7, GPIO_FUNC_SPI);

    // Brief break before we start sending commands to let everything
    // initialize.
    sleep_us(STARTUP_SLEEP_US);

    // Read from the motion and delta registers in sequence during
    // startup as per the datasheet instructions.
    pmw3360_read_register(MOTION_REGISTER_ADDRESS);
    pmw3360_read_register(DELTA_XL_REGISTER_ADDRESS);
    pmw3360_read_register(DELTA_XH_REGISTER_ADDRESS);
    pmw3360_read_register(DELTA_YL_REGISTER_ADDRESS);
    pmw3360_read_register(DELTA_YH_REGISTER_ADDRESS);
}

void pmw3360_task(void)
{
}

struct mouse_sensor_delta_t pmw3360_get_current_delta(void)
{
}
