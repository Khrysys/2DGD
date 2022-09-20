/// @description Insert description here
// You can write your code in this editor
if(mouse_x >= center_load_box_offset + 50 && mouse_x <= (window_get_width() / 2) - 50) {
	if(mouse_y >= center_load_box_offset + 50 && mouse_y >=  (window_get_height() - center_load_box_offset) - 50) {
		show_debug_message("Loading Old Save");
		load_save_data();
	}
}

if(mouse_x >= (window_get_width() / 2) - 50 && mouse_x <= (window_get_width() - center_load_box_offset) - 50) {
	if(mouse_y >= center_load_box_offset + 50 && mouse_y >=  (window_get_height() - center_load_box_offset) - 50) {
		show_debug_message("Creating New Save");
		create_new_save();
	}
}

result = load_save_data();
if(result) {
	room = game_room;
} else {
	reset_all();
}
