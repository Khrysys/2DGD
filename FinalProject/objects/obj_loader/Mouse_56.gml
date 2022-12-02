/// @description Insert description here
// You can write your code in this editor

var box_height = (window_get_height() - 400) / 3;

// Check if mouse is inside x value range
if(mouse_x >= 100 && mouse_x < window_get_width() - 100) {
	// Check if mouse is inside of top box
	if(mouse_y >= 100 && mouse_y <= 100 + box_height) {
		global.SAVE_NAME = "1.ini"
		ini_open(global.SAVE_NAME);
		var name = ini_read_string("player1", "name", "New Save");
		ini_close();
		if(name = "New Save") {
			room = room_new_save;
		} else {
			room = room_start;
		}
	}
	// Check if mouse is inside of middle box
	if(mouse_y >= 200 + box_height && mouse_y <= 2 * (100 + box_height)) {
		global.SAVE_NAME = "2.ini"
		ini_open(global.SAVE_NAME);
		var name = ini_read_string("player1", "name", "New Save");
		ini_close();
		if(name = "New Save") {
			room = room_new_save;
		} else {
			room = room_start;
		}
	}
	// Check if mouse is inside of bottom box
	if(mouse_y >= 100 + (2 * (100 + box_height))&& mouse_y <= window_get_height() - 100) {
		global.SAVE_NAME = "3.ini"
		ini_open(global.SAVE_NAME);
		var name = ini_read_string("player1", "name", "New Save");
		show_debug_message(ini_close());
		if(name = "New Save") {
			room = room_new_save;
		} else {
			room = room_start;
		}
	}
	
	// No save was hit
}