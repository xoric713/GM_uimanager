// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_ui(RM,w = 1600,h = 1000,cw = 1600,ch = 1000,ctarget = noone){
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
enum alignment {
	NW,
	N,
	NE,
	E,
	C,
	W,
	SW,
	S,
	SE
}
function Make_Button(Sprite,xx,yy,ww,hh,txt,txtsze,color = c_white,tcolor = c_black,talign = alignment.NW,alpha = 1) constructor {
	sprite = Sprite
	sprite_index = 0
	x = global.coors[xx][yy][0]
	y = global.coors[xx][yy][1]
	w = ww
	h = hh
	text = txt
	text_size = txtsze
	colour = color
	Tcolour = tcolor
	talignment = talign
	alp = alpha
	draw = function(){
		draw_sprite_stretched_ext(sprite,sprite_index,x,y,w,h,colour,alp)
		var xx,yy
		switch(talignment){
			case alignment.NW:
			xx = x
			yy = y
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			break
			case alignment.N:
			xx = ((2*x)+w)/2
			yy = y
			draw_set_valign(fa_top)
			draw_set_halign(fa_center)
			break
			case alignment.NE:
			xx = x+w
			yy = y
			draw_set_valign(fa_top)
			draw_set_halign(fa_right)
			break
			case alignment.W:
			xx = x
			yy = ((2*y)+h)/2
			draw_set_valign(fa_middle)
			draw_set_halign(fa_left)
			break
			case alignment.C:
			xx = ((2*x)+w)/2
			yy = ((2*y)+h)/2
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
			break
			case alignment.E:
			xx = x+w
			yy = ((2*y)+h)/2
			draw_set_valign(fa_middle)
			draw_set_halign(fa_right)
			break
			case alignment.SW:
			xx = x
			yy = y+h
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			break
			case alignment.S:
			xx = ((2*x)+w)/2
			yy = y+h
			draw_set_valign(fa_top)
			draw_set_halign(fa_center)
			break
			case alignment.SE:
			xx = x+w
			yy = y+h
			draw_set_valign(fa_top)
			draw_set_halign(fa_right)
			break
		}
		draw_text_ext_transformed_color(xx,yy,text,30*text_size,w,text_size,text_size,0,Tcolour,Tcolour,Tcolour,Tcolour,alp)
	}
}
enum axis {
	X,
	Y
}
function Make_Button_list(dirctn,count,Sprite,xx,yy,ww,hh,txt,txtsze,color = c_white,tcolor = c_black,talign = alignment.NW,alpha = 1) constructor{
	elements = []
	switch(dirctn){
		case axis.X:
		for (var i = 0; i < count; ++i) {
			elements[i] = new Make_Button(Sprite,xx+(i+w),yy,ww,hh,txt,txtsze,color,tcolor,talign,alpha)  
		}
		break
		case axis.Y:
		for (var i = 0; i < count; ++i) {
			elements[i] = new Make_Button(Sprite,xx,yy+(i+h),ww,hh,txt,txtsze,color,tcolor,talign,alpha)  
		}
		break
	}
}