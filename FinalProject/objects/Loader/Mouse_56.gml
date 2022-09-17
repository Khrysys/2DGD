/// @description Insert description here
// You can write your code in this editor

show_debug_message(string(window_get_width()) + ", " + string(window_get_height()))

global.saveID = 0;

if(mouse_x >= global.save_button_offset_x && mouse_x <= window_get_width() - global.save_button_offset_x) {
	if(mouse_y >= window_get_height() - 700 && mouse_y <= window_get_height() - 550) {
		global.saveID = 1;
	} else if(mouse_y >= window_get_height() - 525 && mouse_y <= window_get_height() - 375) {
		global.saveID = 2;	
	} else if(mouse_y >= window_get_height() - 350 && mouse_y <= window_get_height() - 200) {
		global.saveID = 3;	
	}  else if(mouse_y >= window_get_height() - 175 && mouse_y <= window_get_height() - 25) {
		global.saveID = 4;	
	}
}

show_debug_message(string(global.saveID))

if(global.saveID != 0) {
	global.current_floor = get_current_floor()
}