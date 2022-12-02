/// @description Insert description here
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
draw_text(125, 1, "HP: " + string(current_hp) + " / " + string(max_hp));
draw_text(125, 41, "MP: " + string(current_mp) + " / " + string(max_mp));
draw_set_font(fnt_stat_regular);
draw_set_color(color);
draw_circle(25, 25, 100, false);
draw_set_color(c_black);
draw_circle(25, 25, 100, true);
draw_text(10, 10, name);
draw_text(10, 35, "Level " + string(lvl));