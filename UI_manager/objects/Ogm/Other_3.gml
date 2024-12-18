/// @description Insert description here
// You can write your code in this editor
ds_map_destroy(global.saves)
	var temp = ds_map_find_first(global.uiElements)
	while(temp != undefined){
		ds_map_destroy(global.uiElements[? temp])
		temp = ds_map_find_next(global.uiElements,temp)
	}
ds_map_destroy(global.uiElements)