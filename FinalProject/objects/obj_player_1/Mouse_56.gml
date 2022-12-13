/// @description Insert description here
// You can write your code in this editor

if(global.IS_PAUSED) {
	keyboard_string = name;
	if(pause_display == 0) {
		if(value_between(window_mouse_get_x(), 100, window_get_width() - 100)) {
			show_debug_message("Here")
			if(value_between(window_mouse_get_y(), 200, 250)) {
				pause_display = 1;
			}
		}
	}
}