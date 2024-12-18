// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum Control {
    // Keyboard Keys
    KBA,
    KBB,
    KBC,
    KBD,
    KBE,
    KBF,
    KBG,
    KBH,
    KBI,
    KBJ,
    KBK,
    KBL,
    KBM,
    KBN,
    KBO,
    KBP,
    KBQ,
    KBR,
    KBS,
    KBT,
    KBU,
    KBV,
    KBW,
    KBX,
    KBY,
    KBZ,
    KB0,
    KB1,
    KB2,
    KB3,
    KB4,
    KB5,
    KB6,
    KB7,
    KB8,
    KB9,
    KBSpace,
    KBEnter,
    KBEscape,
    KBUp,
    KBDown,
    KBLeft,
    KBRight,
    KBShift,
    KBControl,
    KBAlt,
    KBBackspace,
    KBTab,
    KBF1,
    KBF2,
    KBF3,
    KBF4,
    KBF5,
    KBF6,
    KBF7,
    KBF8,
    KBF9,
    KBF10,
    KBF11,
    KBF12,

    // Controller Buttons
    CTRLA,
    CTRLB,
    CTRLX,
    CTRLY,
    CTRLUP,
    CTRLDOWN,
    CTRLLEFT,
    CTRLRIGHT,
    CTRLSTART,
    CTRLSELECT,
    CTRLTRIGL,
    CTRLTRIGR
}

function init_input(input_array = []){
	file_delete(working_directory + "controls.profile")
    if (file_exists(working_directory + "controls.profile")) {
        var file = file_text_open_read(working_directory + "controls.profile");
        var data = file_text_read_string(file);
        file_text_close(file);
        global.saves[? "input"] = data;
        show_debug_message("Loaded input from file.");
    } else {
        global.saves[? "input"] = input_array;
        var file = file_text_open_write(working_directory + "controls.profile");
        file_text_write_string(file, string(input_array));
        file_text_close(file);
        show_debug_message("Saved input to file.");
    }
}

function input_check(index) {
    return input_state_check(index, keyboard_check, gamepad_button_check);
}

function input_pressed(index) {
    return input_state_check(index, keyboard_check_pressed, gamepad_button_check_pressed);
}

function input_released(index) {
    return input_state_check(index, keyboard_check_released, gamepad_button_check_released);
}

function input_state_check(index, kb_function, gp_function) {
    var input_array = global.saves[? "input"];
    if (is_array(input_array) && index < array_length(input_array)) {
        for (var i = 0; i < array_length(input_array[index]); ++i) {
		    var input_value = input_array[index][i];
	        if (input_value == Control.KBA && kb_function(ord("A"))) { return true; }
	        if (input_value == Control.KBB && kb_function(ord("B"))) { return true; }
	        if (input_value == Control.KBC && kb_function(ord("C"))) { return true; }
	        if (input_value == Control.KBD && kb_function(ord("D"))) { return true; }
	        if (input_value == Control.KBE && kb_function(ord("E"))) { return true; }
	        if (input_value == Control.KBF && kb_function(ord("F"))) { return true; }
	        if (input_value == Control.KBG && kb_function(ord("G"))) { return true; }
	        if (input_value == Control.KBH && kb_function(ord("H"))) { return true; }
	        if (input_value == Control.KBI && kb_function(ord("I"))) { return true; }
	        if (input_value == Control.KBJ && kb_function(ord("J"))) { return true; }
	        if (input_value == Control.KBK && kb_function(ord("K"))) { return true; }
	        if (input_value == Control.KBL && kb_function(ord("L"))) { return true; }
	        if (input_value == Control.KBM && kb_function(ord("M"))) { return true; }
	        if (input_value == Control.KBN && kb_function(ord("N"))) { return true; }
	        if (input_value == Control.KBO && kb_function(ord("O"))) { return true; }
	        if (input_value == Control.KBP && kb_function(ord("P"))) { return true; }
	        if (input_value == Control.KBQ && kb_function(ord("Q"))) { return true; }
	        if (input_value == Control.KBR && kb_function(ord("R"))) { return true; }
	        if (input_value == Control.KBS && kb_function(ord("S"))) { return true; }
	        if (input_value == Control.KBT && kb_function(ord("T"))) { return true; }
	        if (input_value == Control.KBU && kb_function(ord("U"))) { return true; }
	        if (input_value == Control.KBV && kb_function(ord("V"))) { return true; }
	        if (input_value == Control.KBW && kb_function(ord("W"))) { return true; }
	        if (input_value == Control.KBX && kb_function(ord("X"))) { return true; }
	        if (input_value == Control.KBY && kb_function(ord("Y"))) { return true; }
	        if (input_value == Control.KBZ && kb_function(ord("Z"))) { return true; }
	        if (input_value == Control.KB0 && kb_function(ord("0"))) { return true; }
	        if (input_value == Control.KB1 && kb_function(ord("1"))) { return true; }
	        if (input_value == Control.KB2 && kb_function(ord("2"))) { return true; }
	        if (input_value == Control.KB3 && kb_function(ord("3"))) { return true; }
	        if (input_value == Control.KB4 && kb_function(ord("4"))) { return true; }
	        if (input_value == Control.KB5 && kb_function(ord("5"))) { return true; }
	        if (input_value == Control.KB6 && kb_function(ord("6"))) { return true; }
	        if (input_value == Control.KB7 && kb_function(ord("7"))) { return true; }
	        if (input_value == Control.KB8 && kb_function(ord("8"))) { return true; }
	        if (input_value == Control.KB9 && kb_function(ord("9"))) { return true; }
	        if (input_value == Control.KBSpace && kb_function(vk_space)) { return true; }
	        if (input_value == Control.KBEnter && kb_function(vk_enter)) { return true; }
	        if (input_value == Control.KBEscape && kb_function(vk_escape)) { return true; }
	        if (input_value == Control.KBUp && kb_function(vk_up)) { return true; }
	        if (input_value == Control.KBDown && kb_function(vk_down)) { return true; }
	        if (input_value == Control.KBLeft && kb_function(vk_left)) { return true; }
	        if (input_value == Control.KBRight && kb_function(vk_right)) { return true; }
	        if (input_value == Control.KBShift && kb_function(vk_shift)) { return true; }
	        if (input_value == Control.KBControl && kb_function(vk_control)) { return true; }
	        if (input_value == Control.KBAlt && kb_function(vk_alt)) { return true; }
	        if (input_value == Control.KBBackspace && kb_function(vk_backspace)) { return true; }
	        if (input_value == Control.KBTab && kb_function(vk_tab)) { return true; }
	        if (input_value == Control.KBF1 && kb_function(vk_f1)) { return true; }
	        if (input_value == Control.KBF2 && kb_function(vk_f2)) { return true; }
	        if (input_value == Control.KBF3 && kb_function(vk_f3)) { return true; }
	        if (input_value == Control.KBF4 && kb_function(vk_f4)) { return true; }
	        if (input_value == Control.KBF5 && kb_function(vk_f5)) { return true; }
	        if (input_value == Control.KBF6 && kb_function(vk_f6)) { return true; }
	        if (input_value == Control.KBF7 && kb_function(vk_f7)) { return true; }
	        if (input_value == Control.KBF8 && kb_function(vk_f8)) { return true; }
	        if (input_value == Control.KBF9 && kb_function(vk_f9)) { return true; }
	        if (input_value == Control.KBF10 && kb_function(vk_f10)) { return true; }
	        if (input_value == Control.KBF11 && kb_function(vk_f11)) { return true; }
	        if (input_value == Control.KBF12 && kb_function(vk_f12)) { return true; }
	        if (input_value == Control.CTRLA && gp_function(0, gp_face1)) { return true; }
	        if (input_value == Control.CTRLB && gp_function(0, gp_face2)) { return true; }
	        if (input_value == Control.CTRLX && gp_function(0, gp_face3)) { return true; }
	        if (input_value == Control.CTRLY && gp_function(0, gp_face4)) { return true; }
	        if (input_value == Control.CTRLUP && gp_function(0, gp_padu)) { return true; }
	        if (input_value == Control.CTRLDOWN && gp_function(0, gp_padd)) { return true; }
	        if (input_value == Control.CTRLLEFT && gp_function(0, gp_padl)) { return true; }
	        if (input_value == Control.CTRLRIGHT && gp_function(0, gp_padr)) { return true; }
	        if (input_value == Control.CTRLSTART && gp_function(0, gp_start)) { return true; }
	        if (input_value == Control.CTRLSELECT && gp_function(0, gp_select)) { return true; }
	        if (input_value == Control.CTRLTRIGL && gp_function(0, gp_shoulderl)) { return true; }
	        if (input_value == Control.CTRLTRIGR && gp_function(0, gp_shoulderr)) { return true; }
	    }
		return false
    } else {
        show_debug_message("Error: Invalid input index or input array not set correctly.");
        return false;
    }
}
