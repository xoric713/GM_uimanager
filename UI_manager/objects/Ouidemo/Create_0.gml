/// @description Insert description here
// You can write your code in this editor
Layer_name = "Buttons"
global.uiLayers[0] = new ui_layer(Layer_name)
button_name = "start"
list_name = "list"
fun = "_f"
list = [[Layer_name,button_name],[Layer_name,list_name]]
index = 0
global.selected = [Layer_name,button_name]
global.uiElements[? Layer_name][? button_name] = new Make_Button(Sbutt,100,10,30*4,15*3,button_name,2,c_white,c_black) 
global.uiElements[? Layer_name][? button_name + fun] = function(){
	init_ui(Room2)
}
global.uiElements[? Layer_name][? list_name] = new Make_Button_list(axis.Y,Sbutt,500,10,30*4,15*3,["banana","apple"],2) 
global.uiElements[? Layer_name][? list_name + fun] = function(){
	show_debug_message(global.uiElements[? Layer_name][? list_name].elements[global.uiElements[? Layer_name][? list_name].current].text)
}
enum keystate {
	check,
	pressed,
	released
}
input_ented = function(direct = keystate.check) {
	if(direct = keystate.check && (keyboard_check(vk_space) || keyboard_check(vk_enter) || gamepad_button_check(0,gp_face1))){
		return true
	}else if(direct = keystate.check && !(keyboard_check(vk_space) || keyboard_check(vk_enter) || gamepad_button_check(0,gp_face1))){
		return false
	}else if(direct = keystate.pressed && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1))){
		return true
	}else if(direct = keystate.pressed && !(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1))){
		return false
	}else if(direct = keystate.released && (keyboard_check_released(vk_space) || keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1))){
		return true
	}else if(direct = keystate.released && !(keyboard_check_released(vk_space) || keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1))){
		return false
	}
}
input_up = function(direct = keystate.check) {
	if(direct = keystate.check && (keyboard_check(ord("W")) || keyboard_check(vk_up) || gamepad_button_check(0,gp_padu))){
		return true
	}else if(direct = keystate.check && !(keyboard_check(ord("W")) || keyboard_check(vk_up) || gamepad_button_check(0,gp_padu))){
		return false
	}else if(direct = keystate.pressed && (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_padu))){
		return true
	}else if(direct = keystate.pressed && !(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_padu))){
		return false
	}else if(direct = keystate.released && (keyboard_check_released(ord("W")) || keyboard_check_released(vk_up) || gamepad_button_check_released(0,gp_padu))){
		return true
	}else if(direct = keystate.released && !(keyboard_check_released(ord("W")) || keyboard_check_released(vk_up) || gamepad_button_check_released(0,gp_padu))){
		return false
	}
}
input_down = function(direct = keystate.check) {
	if(direct = keystate.check && (keyboard_check(ord("S")) || keyboard_check(vk_down) || gamepad_button_check(0,gp_padd))){
		return true
	}else if(direct = keystate.check && !(keyboard_check(ord("S")) || keyboard_check(vk_down) || gamepad_button_check(0,gp_padd))){
		return false
	}else if(direct = keystate.pressed && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0,gp_padd))){
		return true
	}else if(direct = keystate.pressed && !(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0,gp_padd))){
		return false
	}else if(direct = keystate.released && (keyboard_check_released(ord("S")) || keyboard_check_released(vk_down) || gamepad_button_check_released(0,gp_padd))){
		return true
	}else if(direct = keystate.released && !(keyboard_check_released(ord("S")) || keyboard_check_released(vk_down) || gamepad_button_check_released(0,gp_padd))){
		return false
	}
}
input_left = function(direct = keystate.check) {
	if(direct = keystate.check && (keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_button_check(0,gp_padl))){
		return true
	}else if(direct = keystate.check && !(keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_button_check(0,gp_padl))){
		return false
	}else if(direct = keystate.pressed && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0,gp_padl))){
		return true
	}else if(direct = keystate.pressed && !(keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0,gp_padl))){
		return false
	}else if(direct = keystate.released && (keyboard_check_released(ord("A")) || keyboard_check_released(vk_left) || gamepad_button_check_released(0,gp_padl))){
		return true
	}else if(direct = keystate.released && !(keyboard_check_released(ord("A")) || keyboard_check_released(vk_left) || gamepad_button_check_released(0,gp_padl))){
		return false
	}
}
input_right = function(direct = keystate.check) {
	if(direct = keystate.check && (keyboard_check(ord("D")) || keyboard_check(vk_right) || gamepad_button_check(0,gp_padr))){
		return true
	}else if(direct = keystate.check && !(keyboard_check(ord("D")) || keyboard_check(vk_right) || gamepad_button_check(0,gp_padr))){
		return false
	}else if(direct = keystate.pressed && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0,gp_padr))){
		return true
	}else if(direct = keystate.pressed && !(keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0,gp_padr))){
		return false
	}else if(direct = keystate.released && (keyboard_check_released(ord("D")) || keyboard_check_released(vk_right) || gamepad_button_check_released(0,gp_padr))){
		return true
	}else if(direct = keystate.released && !(keyboard_check_released(ord("D")) || keyboard_check_released(vk_right) || gamepad_button_check_released(0,gp_padr))){
		return false
	}
}