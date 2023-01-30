//Imports
#include "Keyboard.h"

//Constants
const int COLUMN_COUNT = 6;
const int ROW_COUNT = 4;
const int LAYER_COUNT = 2;

const byte ROW_0_PIN = 2;
const byte ROW_1_PIN = 3;
const byte ROW_2_PIN = 4;
const byte ROW_3_PIN = 5;

const byte COL_0_PIN = 8;
const byte COL_1_PIN = 10;
const byte COL_2_PIN = 9;
const byte COL_3_PIN = 16;
const byte COL_4_PIN = 14;
const byte COL_5_PIN = 15;

const byte ROWS[ROW_COUNT] = { ROW_0_PIN, ROW_1_PIN, ROW_2_PIN, ROW_3_PIN };
const byte COLS[COLUMN_COUNT] = { COL_0_PIN, COL_1_PIN, COL_2_PIN, COL_3_PIN, COL_4_PIN, COL_5_PIN };

#define KC_NULL 0x00
#define KC_LAYER_TOGGLE 0x00
#define KEY_PRINT_SCREEN 0xCE

// Program params
const int TESTING_SERIAL_BAUD_RATE = 115200;
const int LOOP_DELAY_TIME = 20;

// Program flags
const bool SWITCH_TESTING_MODE = false;
const bool IS_LEFT_KEYBOARD_SIDE = true;

//Classes
class LayerSwapKeyLocationProvider
{
    public:
        virtual int getlayerswapkeyrow() = 0;
        virtual int getlayerswapkeycol() = 0;
}

class LayeredKeycodeProvider
{
    public:
        virtual char getlayerkeycode(int layerindex, int row, int col) = 0;
}

class LeftKeymap: public LayeredKeycodeProvider, public LayerSwapKeyLocationProvider
{
    private:
        const int LAYER_KEY_ROW_INDEX = 3;
        const int LAYER_KEY_COL_INDEX = 4;

        const int _layer0keymap[ROW_COUNT][COLUMN_COUNT] =
            {
                { 'q', 'w', 'e', 'r', 't', 'y' },
                { 'a', 's', 'd', 'f', 'g', 'h' },
                { 'z', 'x', 'c', 'v', 'b', 'n' },
                { KEY_LEFT_CTRL, KEY_LEFT_GUI, KEY_LEFT_ALT, KEY_ESC, KC_LAYER_TOGGLE , ' ' }
            }
        const int _layer1keymap[ROW_COUNT][COLUMN_COUNT] =
            {
                { '1', '2', '3', '4', '5', '6' },
                { '`', KEY_HOME, KEY_END, KC_NULL, KC_NULL, KEY_LEFT_ARROW },
                { KEY_F1, KEY_F2, KEY_F3, KEY_F4, KEY_F5, KEY_F6 },
                { KEY_LEFT_CTRL, KEY_LEFT_GUI, KEY_LEFT_ALT, KEY_ESC, KC_LAYER_TOGGLE, ' ' }
            }
    public:
        char getlayerkeycode(int layerindex, int row, int col)
        {
            switch(layer)
            {
                case 0:
                    _layer0keymap[row][col];
                    break;
                case 1:
                    _layer1keymap[row][col];
                    break;
            }
            return KC_NULL;
        }

        int getlayerswapkeyrow()
        {
            return LAYER_KEY_ROW_INDEX;
        }

        int getlayerswapkeycol()
        {
            return LAYER_KEY_COL_INDEX;
        }
}

class RightKeymap: public LayeredKeycodeProvider, public LayerSwapKeyLocationProvider
{
    private:
        const int LAYER_KEY_ROW_INDEX = 3;
        const int LAYER_KEY_COL_INDEX = 1;

        const int _layer0keymap[ROW_COUNT][COLUMN_COUNT] =
            {
                { 'u', 'i', 'o', 'p', '[', ']' },
                { 'j', 'k', 'l', ';', '\'', KEY_RETURN },
                { 'm', ',', '.', '/', KEY_TAB, KEY_BACKSPACE },
                { ' ', KC_LAYER_TOGGLE, KC_NULL, '(', ')', KEY_DELETE }
            }
        const int _layer1keymap[ROW_COUNT][COLUMN_COUNT] =
            {
                { '7', '8', '9', '0', '-', '=' },
                { KEY_DOWN_ARROW, KEY_UP_ARROW, KEY_RIGHT_ARROW, KC_NULL, '\\', KEY_RETURN },
                { KEY_F7, KEY_F8, KEY_F9, KEY_F10, KEY_F11, KEY_F12 },
                { KEY_RIGHT_SHIFT, KC_LAYER_TOGGLE, KC_NULL, KEY_PAGE_UP, KEY_PAGE_DOWN, KEY_PRINT_SCREEN}
            }

    public:
        char getlayerkeycode(int layerindex, int row, int col)
        {
            switch(layer)
            {
                case 0:
                    _layer0keymap[row][col];
                    break;
                case 1:
                    _layer1keymap[row][col];
                    break;
            }
            return KC_NULL;
        }

        int getlayerswapkeyrow()
        {
            return LAYER_KEY_ROW_INDEX;
        }

        int getlayerswapkeycol()
        {
            return LAYER_KEY_COL_INDEX;
        }
}

//Variables
byte _switchMatrix[KEY_ROW_COUNT][KEY_COLUMN_COUNT] = {0};
byte _switchMatrixPrev[KEY_ROW_COUNT][KEY_COLUMN_COUNT] = {0};
LayerSwapKeyLocationProvider* _layerKeyProvider;
LayeredKeycodeProvider* _keycodeProvider;
int _currentlayer = 0;

//Init
void setup()
{
    // Init serial output
    Serial.begin(TESTING_SERIAL_BAUD_RATE);

    // Init keymap
    if (IS_LEFT_KEYBOARD_SIDE)
    {
        // Use left keymap.
        LeftKeymap lmap;
        _layerKeyProvider = &lmap;
        _keycodeProvider = &lmap;
    }
    else
    {
        // Use right keymap.
        RightKeymap rmap;
        _layerKeyProvider = &rmap;
        _keycodeProvider = &rmap;
    }

    // Init default pin modes;
	for(int i = 0; i < KEY_ROW_COUNT; i++)
    {
		pinMode(ROWS[i], INPUT_PULLUP);
	}
	for (int i = 0; i < KEY_COLUMN_COUNT; i++)
    {
		pinMode(COLS[i], INPUT);
	}
}

//Main Method
void loop()
{
    delay(LOOP_DELAY_TIME);

    copy_matrix_state_to_prev();
    read_matrix();

    if (SWITCH_TESTING_MODE)
    {
        print_matrix_to_serial_out();
    }
    else
    {
        set_key_states();
    }
}

//Methods
void read_matrix()
{
    for (int row = 0; row < KEY_ROW_COUNT; row++)
    {
        // set the row to output low
        byte curRow = ROWS[row];
        pinMode(curRow, OUTPUT);
        digitalWrite(curRow, LOW);

        // iterate through the columns reading the value - should be zero if switch is pressed
        for (int col = 0; col < KEY_COLUMN_COUNT; col++)
        {
            byte rowCol = COLS[col];
            pinMode(rowCol, INPUT_PULLUP);
            _switchMatrix[row][col] = digitalRead(rowCol);
            pinMode(rowCol, INPUT);
        }

        // disable the row, turn the pullup resistor off
        pinMode(curRow, INPUT);
    }
}

void set_key_states()
{
    for (int i = 0; i < KEY_ROW_COUNT; i++)
    {
        for (int j = 0; j < KEY_COLUMN_COUNT; j++)
        {
            // If the swich changed state..
            if (_switchMatrix[i][j] != _switchMatrixPrev[i][j])
            {
                if (_switchMatrix[i][j] == 0 && _switchMatrixPrev[i][j] == 1)
                {
                    if (_layerKeyProvider.getlayerswapkeyrow() == i
                        && _layerKeyProvider.getlayerswapkeycol == j)
                    {
                        // The layer key was pressed.
                        swap_layer();
                    }
                    else
                    {
                        // A non-layer key has been pressed.
                        Keyboard.press(_keycodeProvider.getlayerkeycode(_currentlayer, i, j));
                    }
                }
                else
                {
                    // A non-layer key has been released.
                    for (int k = 0; k < LAYER_COUNT; k++)
                    {
                        // Attempt to release all keys across all layers at this location.
                        // This is to prevent bugs when swapping layers with another key held.
                        // TODO this may need to be revised to only the current layer.
                        Keyboard.release(_keycodeProvider.getlayerkeycode(k, i, j));
                    }
                }
            }
        }
    }
}

void swap_layer()
{
    switch (_currentlayer)
    {
        case 0:
            _currentlayer = 1;
            break;
        case 1:
            _currentlayer = 0;
            break;
    }
}

void copy_matrix_state_to_prev()
{
    for (int i = 0; i < KEY_ROW_COUNT; i++)
    {
        for (int j = 0; j < KEY_COLUMN_COUNT; j++)
        {
            _switchMatrixPrev[i][j] = _switchMatrix[i][j];
        }
    }
}

//Utility Methods
void print_matrix_to_serial_out()
{
    String matrixstr = "";
    for (int row = 0; row < KEY_ROW_COUNT; row++)
    {
        if (row < 10) {
           matrixstr += String("0");
        }
        matrixstr += String(row);
        matrixstr += String(": ");

        for (int col = 0; col < KEY_COLUMN_COUNT; col++)
        {
            matrixstr += String(_switchMatrix[row][col]);
            if (col < KEY_COLUMN_COUNT)
                matrixstr += String(", ");
        }
        matrixstr += String("\n");
    }
    Serial.print(matrixstr);
}
