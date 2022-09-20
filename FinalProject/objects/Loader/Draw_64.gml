/// @description Insert description here
// You can write your code in this editor

if(global.saveName == "") {
	draw_set_color(c_white);
	draw_rectangle(center_load_box_offset + 45, center_load_box_offset + 45, (window_get_width() / 2) - 45, (window_get_height() - center_load_box_offset) - 45, false);
	draw_rectangle((window_get_width() / 2) + 45, center_load_box_offset + 45, (window_get_width() - center_load_box_offset) - 45, (window_get_height() - center_load_box_offset) - 45, false);
	
	draw_set_color(c_gray);
	draw_rectangle(center_load_box_offset + 50, center_load_box_offset + 50, (window_get_width() / 2) - 50, (window_get_height() - center_load_box_offset) - 50, false);
	draw_rectangle((window_get_width() / 2) + 50, center_load_box_offset + 50, (window_get_width() - center_load_box_offset) - 50, (window_get_height() - center_load_box_offset) - 50, false);
	
	draw_set_color(c_white);
	draw_rectangle(center_load_box_offset, center_load_box_offset, window_get_width() - center_load_box_offset, window_get_height() - center_load_box_offset, true);
	draw_set_font(Save_File_IO_font)
	draw_text(((window_get_width() - center_load_box_offset) / 2) - (center_load_box_offset + 300), (window_get_height() - center_load_box_offset) / 2, "Load Save From File");
	draw_text((window_get_width() / 2 + center_load_box_offset),  (window_get_height() - center_load_box_offset) / 2, "Create New Save File");
}