//TODO begin coding for mk3 layour
//Imports
#include "Keyboard.h"

//Constants
const bool SWITCH_TESTING_MODE = true;
const bool IS_LEFT_KEYBOARD_SIDE = false;

const int TESTING_SERIAL_BAUD_RATE = 115200;
const int LOOP_DELAY_TIME = 20;

const unsigned long DEFAULT_TAP_ACTION_TIMEOUT = 200;
const unsigned long DEFAULT_BASE_APPLY_DELAY = 50;

const int COLUMN_COUNT = 7;
const int ROW_COUNT = 3;

const byte ROW_0_PIN = IS_LEFT_KEYBOARD_SIDE ? 8 : 9;
const byte ROW_1_PIN = IS_LEFT_KEYBOARD_SIDE ? 7 : 8;
const byte ROW_2_PIN = IS_LEFT_KEYBOARD_SIDE ? 6 : 7;

const byte COL_0_PIN = A1;
const byte COL_1_PIN = A0;
const byte COL_2_PIN = 15;
const byte COL_3_PIN = 14;
const byte COL_4_PIN = 16;
const byte COL_5_PIN = 10;
const byte COL_6_PIN = 11;

const byte ROWS[ROW_COUNT] = { ROW_0_PIN, ROW_1_PIN, ROW_2_PIN };
const byte COLS[COLUMN_COUNT] = { COL_0_PIN, COL_1_PIN, COL_2_PIN, COL_3_PIN, COL_4_PIN, COL_5_PIN, COL_6_PIN};

#define KC_NULL 0x00
#define KC_LM1 0x01 //(STX) //Repurposing obsolete ascii codes for our layer modifier codes
#define KC_LM2 0x02 //(ETX)
#define KC_REPEAT 0x07 //(BEL)
#define KEY_PRINT_SCREEN 0xCE

//Enums
enum KeyboardSide
{
    left = 420,
    right = 69
};

enum TapKeyFunction
{
    escape,
    tab,
    space,
    repeat,
    colon,
    backspace,
    enter
};

//Interfaces
class IBaseKeymap
{
    public:
        virtual unsigned char get_base_keycode_at(unsigned int row, unsigned int col) = 0;
};

class IBaseTapStateProvider
{
    public:
        virtual bool get_is_base_tap_enabled_key(unsigned int row, unsigned int col) = 0;
        virtual bool get_tap_keycode_at(unsigned int row, unsigned int col) = 0;

        virtual bool get_has_tap_timed_out(unsigned int row, unsigned int col) = 0;
        virtual bool get_has_base_timed_in(unsigned int row, unsigned int col) = 0;
        virtual bool get_has_base_chord_action_been_performed(unsigned int row, unsigned int col) = 0;
};

class IBaseTapStateSetter
{
    public:
        virtual void set_start_key_press(unsigned int row, unsigned int col) = 0;
        virtual void set_has_base_chord_action_performed(
            unsigned int row, unsigned int col, bool hasBaseChordActionBeenPerfomed) = 0;
};

class ILayerInfoService :
    public IBaseKeymap,
    public IBaseTapStateProvider,
    public IBaseTapStateSetter
{
};

//Classes
class KeyHelper
{
    public:
        static bool has_reached_time_threshold(unsigned long holdStart, unsigned long timeout)
        {
            return ((millis()-holdStart) >= timeout);
        }
    private:
        KeyHelper() { }
};

class LeftBaseTapStateContainer : public IBaseTapStateProvider, public IBaseTapStateSetter
{
    public:
        //IBaseTapStateProvider
        virtual bool get_is_base_tap_enabled_key(unsigned int row, unsigned int col)
        {
            return (TAP_KEYS[row][col] != KC_NULL);
        }
        virtual bool get_tap_keycode_at(unsigned int row, unsigned int col)
        {
            return TAP_KEYS[row][col];
        }
        virtual bool get_has_tap_timed_out(unsigned int row, unsigned int col)
        {
            return !KeyHelper::has_reached_time_threshold(
                _pressStart[row][col], DEFAULT_TAP_ACTION_TIMEOUT);
        }
        virtual bool get_has_base_timed_in(unsigned int row, unsigned int col)
        {
            return KeyHelper::has_reached_time_threshold(
                _pressStart[row][col], DEFAULT_BASE_APPLY_DELAY);
        }

        //IBaseTapStateSetter
        virtual void set_start_key_press(unsigned int row, unsigned int col)
        {
            _chordPerformed[row][col] = false;
            _pressStart[row][col] = millis();
        }
        virtual void set_has_base_chord_action_performed(
            unsigned int row, unsigned int col, bool hasBaseChordActionBeenPerfomed)
        {
            _chordPerformed[row][col] = true;
        }

    private:
        //Private Constants
        const unsigned char TAP_KEYS[ROW_COUNT][COLUMN_COUNT] =
        {
            { KEY_ESC,  KC_NULL, KC_NULL, KC_NULL, KC_NULL, KC_NULL, KEY_TAB },
            { KC_NULL,  KC_NULL, KC_NULL, KC_NULL, KC_NULL, KC_NULL, ' ' },
            { KC_NULL,  KC_NULL, KC_NULL, KC_NULL, KC_NULL, KC_NULL, KC_REPEAT },
        };

        //Private Variables
        unsigned long _pressStart[ROW_COUNT][COLUMN_COUNT] =
            {
                { 0, 0, 0, 0, 0, 0, 0 },
                { 0, 0, 0, 0, 0, 0, 0 },
                { 0, 0, 0, 0, 0, 0, 0 },
            };
        bool _chordPerformed[ROW_COUNT][COLUMN_COUNT] =
            {
                { 0, 0, 0, 0, 0, 0, 0 },
                { 0, 0, 0, 0, 0, 0, 0 },
                { 0, 0, 0, 0, 0, 0, 0 },
            };
};

class LeftLayerZeroInfo : public ILayerInfoService
{
    public:
        //Constructor
        LeftLayerZeroInfo(IBaseTapStateProvider& tapStateProvider,
            IBaseTapStateSetter& tapStateSetter)
        {
            _baseTapStateProvider = &tapStateProvider;
            _baseTapStateSetter = &tapStateSetter;
        }

        //Public Methods
        //IBaseKeymap
        virtual unsigned char get_base_keycode_at(unsigned int row, unsigned int col)
        {
            return BASE_KEYS[row][col];
        }

        //IBaseTapStateProvider
        virtual bool get_is_base_tap_enabled_key(unsigned int row, unsigned int col)
        {
            return _baseTapStateProvider->get_is_base_tap_enabled_key(row,col);
        }
        virtual bool get_tap_keycode_at(unsigned int row, unsigned int col)
        {
            return _baseTapStateProvider->get_tap_keycode_at(row,col);
        }
        virtual bool get_has_tap_timed_out(unsigned int row, unsigned int col)
        {
            return _baseTapStateProvider->get_has_tap_timed_out(row,col);
        }
        virtual bool get_has_base_timed_in(unsigned int row, unsigned int col)
        {
            return _baseTapStateProvider->get_has_base_timed_in(row,col);
        }

        //IBaseTapStateSetter
        virtual void set_start_key_press(unsigned int row, unsigned int col)
        {
            return _baseTapStateSetter->set_start_key_press(row,col);
        }
        virtual void set_has_base_chord_action_performed(
            unsigned int row, unsigned int col, bool hasBaseChordActionBeenPerfomed)
        {
            return _baseTapStateSetter->set_has_base_chord_action_performed(
                row,col,hasBaseChordActionBeenPerfomed);
        }

    private:
        //Private Constants
        // NOTE: The left layer maps use the right shift because left shift is what is
        // pressed and released during the 'Keyboard.write()' calls. Thus firing unwanted
        // release events if the physical left shift key is held during that.
        const unsigned char BASE_KEYS[ROW_COUNT][COLUMN_COUNT] =
        {
            { KEY_LEFT_CTRL, 'q', 'w', 'e', 'r', 't', KC_LM1 },
            { KC_NULL,       'a', 's', 'd', 'f', 'g', KC_LM2 },
            { KC_NULL,       'z', 'x', 'c', 'v', 'b', KEY_RIGHT_SHIFT },
        };

        //Private Variables
        IBaseTapStateProvider* _baseTapStateProvider;
        IBaseTapStateSetter* _baseTapStateSetter;
};

//Main
void setup()
{
}

void loop()
{
}

//Utility

