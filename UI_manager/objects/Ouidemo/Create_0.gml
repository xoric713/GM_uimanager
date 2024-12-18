/// @description Insert description here
// You can write your code in this editor
Layer_name = "Buttons"
global.uiLayers[0] = new ui_layer(Layer_name)
button_name = "start"
F_name = "start_function"
global.selected = [[Layer_name,button_name,F_name]]
global.uiElements[? Layer_name][? button_name] = new Make_Button(Sbutt,10,10,30*4,15*3,button_name,2,c_white,c_black) 
global.uiElements[? Layer_name][? F_name] = function(){
	game_end()
}
enum demo_input {
	Up,
	Down,
	Left,
	Right
}
actions = []
actions[demo_input.Up] = [Control.CTRLUP]
actions[demo_input.Down] = [Control.CTRLDOWN]
actions[demo_input.Left] = [Control.CTRLLEFT]
actions[demo_input.Right] = [Control.CTRLRIGHT]
init_input(actions)