/// @description Insert description here
// You can write your code in this editor
var _button = global.uiElements[? Layer_name][? button_name]
_button.sprite_index = 0
var _list = global.uiElements[? Layer_name][? list_name]
for (var i = 0; i < array_length(_list.elements); ++i) {
    _list.elements[i].sprite_index = 0
}
var temp = global.uiElements[? global.selected[0]][? global.selected[1]]
if(global.selected[1] = button_name){
temp.sprite_index = 1	
}else if(global.selected[1] = list_name){
	temp.elements[temp.current].sprite_index = 1
}

if(input_ented(keystate.pressed)){
	global.uiElements[? global.selected[0]][? global.selected[1]+fun]()
}
if(index>0&&input_left(keystate.pressed)){
	index--
	global.selected = list[index]
}
if(index<array_length(list)-1&&input_right(keystate.pressed)){
	index++
	global.selected = list[index]
}
if(list[index][1] = list_name){
	if(_list.current>0&&input_up(keystate.pressed)){
		_list.current--
	}else if(_list.current<array_length(_list.elements)-1&&input_down(keystate.pressed)){
		_list.current++
	}
}
