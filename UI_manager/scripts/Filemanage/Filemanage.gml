// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_files(){
	global.saves = ds_map_create();
	global.profiles = [];

	var folders = file_find_first(working_directory + "*", fa_directory);
	while (folders != "") {
		global.saves[? folders] = 0;
		array_push(global.profiles, folders);
		folders = file_find_next();
	}
	file_find_close();
}

function save_data(path_string_with_file, data) {
	
	var file = file_text_open_write(path_string_with_file);
	file_text_write_string(file, data);
	file_text_close(file);

}

function load_data(path_string_with_file) {
	if (file_exists(path_string_with_file)) {
		var file = file_text_open_read(path_string_with_file);
		var data = file_text_read_string(file);
		file_text_close(file);
		return data;
	} else {
		show_debug_message("Error: File does not exist at path " + path_string_with_file);
		return undefined;
	}
}
