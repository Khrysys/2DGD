/// @description Change sprite color, draw name
// You can write your code in this editor

if(current_sprite != noone) {
	draw_sprite_ext(current_sprite, -1, x, y, 1, 1, 0, color, 1);

	draw_set_color(color);
	draw_set_alpha(1);
	draw_set_font(fnt_stat_regular);
	draw_text(x - 30, y - 50, name);
}