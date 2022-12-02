/// @description Insert description here
// You can write your code in this editor

var box_height = (window_get_height() - 400) / 3;

ini_open("1.ini");
var name = ini_read_string("player1", "name", "New Save");
var color1 = ini_read_real("player1", "color", c_black);
var color2 = ini_read_real("player2", "color", c_black);
ini_close();

draw_rectangle_color(0, 0, window_get_width(), 100 + (box_height / 2), 
		c_black, c_black, color2, color1, false);
		

ini_open("2.ini");
draw_rectangle_color(0, 100 + (box_height / 2), window_get_width(), 150 + (2 * box_height), color1, color2, ini_read_real("player2", "color", c_black), ini_read_real("player1", "color", c_black), false);
color1 = ini_read_real("player1", "color", c_black);
color2 = ini_read_real("player2", "color", c_black);
draw_rectangle_color(100, 100, window_get_width() - 100, 100 + box_height, 
		c_black, c_black, c_black, c_black, false);
draw_text(window_get_width() / 2, 25 + box_height, name);
name = ini_read_string("player1", "name", "New Save");
ini_close();


draw_text(window_get_width() / 2, 250 + box_height, name);

ini_open("3.ini");
draw_rectangle_color(0,  150 + (2 * box_height), window_get_width(), 150 + (2 * (100 + box_height)), color1, color2, ini_read_real("player2", "color", c_black), ini_read_real("player1", "color", c_black), false);
color1 = ini_read_real("player1", "color", c_black);
color2 = ini_read_real("player2", "color", c_black);
draw_rectangle_color(0, 150 + (2 * (100 + box_height)), window_get_width(), window_get_height(), color1, color2, c_black, c_black, false);
draw_rectangle_color(100, 200 + box_height, window_get_width() - 100, 2 * (100 + box_height), 
		c_black, c_black, c_black, c_black, false);
var name = ini_read_string("player1", "name", "New Save");
ini_close();

draw_rectangle_color(100, 100 + (2 * (100 + box_height)), window_get_width() - 100, window_get_height() - 100, 
		c_black, c_black, c_black, c_black, false);

draw_text(window_get_width() / 2, 155 + (2 * (100 + box_height)), name);