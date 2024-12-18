// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_ui(RM,w = 1600,h = 1000,cw = 1600,ch = 1000,ctarget = noone){
	global.selected = [[]]
	var temp = ds_map_find_first(global.uiElements)
	while(temp != undefined){
		ds_map_destroy(global.uiElements[? temp])
		temp = ds_map_find_next(global.uiElements,temp)
	}
	ds_map_clear(global.uiElements)
	room_goto(RM)
	room_height = h
	room_width = w
	global.cam = camera_create_view(0,0,cw,ch,0,ctarget,-1,-1,cw/2,ch/2)
	view_set_camera(0,global.cam)
	view_set_visible(0,true)
	camera_apply(global.cam)
	view_enabled = true
	global.coords = [[]]
	
	var temp = [0,0]
	for (var i = 0; i < room_height; i += room_height/20) {
		for(var j = 0; j < room_width; j += room_width/20){
			global.coords[temp[0],temp[1]] = [i,j]
			temp[1]++
		}
		temp[1] = 0
		temp[0]++
	}
	global.uiLayers = []
}
function ui_layer(Lname = "Buttons",_depth=-500) constructor{
	if(!layer_exists(Lname)){
		_layer = layer_create(_depth,Lname)
	}else{
		_layer = layer_get_id(Lname)
	}
	global.uiElements[? Lname] = ds_map_create()
	
}

function Make_Button(Sprite,xx,yy,ww,hh,txt ="",txtsze = 1,color = c_white,tcolor = c_black,alpha = 1) constructor {
	sprite = Sprite
	sprite_index = 0
	x = xx
	y = yy
	w = ww
	h = hh
	text = txt
	text_size = txtsze
	colour = color
	Tcolour = tcolor
	alp = alpha
	draw = function(){
		draw_sprite_stretched_ext(sprite,sprite_index,x,y,w,h,colour,alp)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_middle)			
		draw_text_transformed_color(x+(w/2),y+(h/2),text,text_size,text_size,0,Tcolour,Tcolour,Tcolour,Tcolour,alp)
	}
}
enum axis {
	X,
	Y
}
function Make_Button_list(dirctn,Sprite,xx,yy,ww,hh,txt = [""],txtsze=1,color = c_white,tcolor = c_black,alpha = 1) constructor{
	elements = []
	current = 0
	switch(dirctn){
		case axis.X:
		for (var i = 0; i < array_length(txt); ++i) {
			elements[i] = new Make_Button(Sprite,xx+(i*ww),yy,ww,hh,txt[i],txtsze,color,tcolor,alpha)  
		}
		break
		case axis.Y:
		for (var i = 0; i <  array_length(txt); ++i) {
			elements[i] = new Make_Button(Sprite,xx,yy+(i*hh),ww,hh,txt[i],txtsze,color,tcolor,alpha)  
		}
		break
	}
	draw = function(){
		for(var i = 0; i < array_length(elements);++i){
			elements[i].draw()
		}
	}
}