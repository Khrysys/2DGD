/// @description Insert description here
// You can write your code in this editor

if(mouse_y >= center_load_box_offset + 50 && mouse_y >=  (window_get_height() - center_load_box_offset) - 50) {
	show_debug_message("mouse_y inside box");
	if(mouse_x >= center_load_box_offset + 50 && mouse_x <= (window_get_width() / 2) - 50) {
		show_debug_message("mouse_x inside load box");
		load_save_data();
	} else if(mouse_x >= (window_get_width() / 2) + 50 && mouse_x <= (window_get_width() - center_load_box_offset) - 50) {
		show_debug_message("mouse_x inside create box");
		create_new_save();
	} else {
		show_debug_message("mouse_x not inside either box");
	}
}



result = load_save_data();
if(result) {
	show_debug_message("Loading room");
} else {
	reset_all();
}
