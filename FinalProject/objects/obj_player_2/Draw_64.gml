/// @description Draw UI in corner + pause menu
// You can write your code in this editor
draw_set_color(c_black);
draw_rectangle(window_get_width(), window_get_height(), window_get_width() - 350, window_get_height() - 40, false);
draw_rectangle(window_get_width(), window_get_height() - 40, window_get_width() - 300, window_get_height() - 80, false);
draw_set_color(c_red);
draw_rectangle(window_get_width() - 25, window_get_height() - 1, window_get_width() - (25 + (324 / (current_hp / max_hp))), window_get_height() - 39, false);
draw_set_color(c_blue);
draw_rectangle(window_get_width() - 25, window_get_height() - 41, window_get_width() - (25 + (274 / (current_mp / max_mp))), window_get_height() - 79, false);
draw_set_font(fnt_stat_bolded);
draw_set_color(c_gray);
draw_text(window_get_width() - 280, window_get_height() - 41, "HP: " + string(current_hp) + " / " + string(max_hp));
draw_text(window_get_width() - 280, window_get_height() - 81, "MP: " + string(current_mp) + " / " + string(max_mp));
draw_set_font(fnt_stat_regular);
draw_set_color(color);
draw_circle(window_get_width() - 25, window_get_height() - 25, 100, false);
draw_set_color(c_black);
draw_circle(window_get_width() - 25, window_get_height() - 25, 100, true);
draw_text(window_get_width() - 40, window_get_height() - 20, name);
draw_text(window_get_width() - 40, window_get_height() - 55, "Level " + string(lvl));

	
if(global.IS_PAUSED) {
	image_speed = 0;
} else {
	image_speed = 1;
}