/// @description Draw UI in corner + pause menu
// You can write your code in this editor
draw_set_color(c_black);
draw_rectangle(0, 0, 350, 40, false);
draw_rectangle(0, 40, 300, 80, false);
draw_set_color(c_red);
draw_rectangle(25, 1, 25 + (324 / (current_hp / max_hp)), 39, false);
draw_set_color(c_blue);
draw_rectangle(25, 41, 25 + (274 / (current_mp / max_mp)), 79, false);
draw_set_font(fnt_stat_bolded);
draw_set_color(c_gray);
draw_text(130, 1, "HP: " + string(current_hp) + " / " + string(max_hp));
draw_text(130, 41, "MP: " + string(current_mp) + " / " + string(max_mp));
draw_set_font(fnt_stat_regular);
draw_set_color(color);
draw_circle(25, 25, 100, false);
draw_set_color(c_black);
draw_circle(25, 25, 100, true);
draw_text(10, 10, name);
draw_text(10, 35, "Level " + string(lvl));
	
if(global.IS_PAUSED) {
	draw_set_alpha(0.4);
	draw_rectangle_color(0, 0, window_get_width(), window_get_height(), c_black, c_black, c_black, c_black, false);	
	draw_set_alpha(1);
	if(pause_display == 0) {
		draw_set_color(c_white);
		draw_set_font(fnt_pause_header);
		draw_text((window_get_width() / 2) - 150, 100, "Paused");
		draw_set_color(c_black);
		draw_rectangle(100, 200, window_get_width() - 100, 250, false);
		draw_set_color(c_gray);
		draw_rectangle(105, 205, window_get_width() - 105, 245, false);
		draw_set_font(fnt_stat_bolded);
		draw_set_color(c_black);
		draw_text((window_get_width() / 2) - 50, 210, "Player 1 Settings");
	} else if(pause_display == 1) {
		draw_set_color(c_white);
		draw_set_font(fnt_pause_header);
		draw_text((window_get_width() / 2) - 300, 100, "Player 1 Settings");
		draw_set_color(c_black);
		draw_rectangle(100, 200, window_get_width() - 100, 250, false);
		draw_set_color(c_gray);
		draw_rectangle(100, 200, window_get_width() - 100, 250, true);
		draw_set_font(fnt_stat_regular);
		draw_set_color(c_white);
		draw_text(50, 210, "Name");
		draw_text(110, 210, temp_name);
	}
	image_speed = 0;
} else {
	image_speed = 1;
}