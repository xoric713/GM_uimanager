/// @description Insert description here
// You can write your code in this editor
global.uiElements[? Layer_name][? button_name].sprite_index = 0
global.uiElements[? global.selected[0][0]][? global.selected[0][1]].sprite_index = 1
if(input_pressed(inputs.input1)){
	global.uiElements[? global.selected[0][0]][? global.selected[0][2]]()
}else{
show_debug_message(input_check(demo_input.Down))
}