/// @description Insert description here
// You can write your code in this editor
init_files()
enum inputs {
	input1
}
actions = []
actions[inputs.input1] = [Control.CTRLA,Control.CTRLB]
init_input(actions)
step = false
global.uiElements = ds_map_create()
init_ui(Room1)
