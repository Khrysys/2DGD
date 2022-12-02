/// @description Insert description here
// You can write your code in this editor

ini_open(global.SAVE_NAME);
ini_write_real("player1", "level", 1);
ini_write_real("player1", "free_points", 1);
ini_write_real("player1", "hp", 10);
ini_write_real("player1", "chp", 10);
ini_write_real("player1", "mp", 10);
ini_write_real("player1", "cmp", 10);
ini_write_real("player1", "atk", 5);
ini_write_real("player1", "def", 5);
ini_write_real("player1", "spd", 5);
ini_write_real("player1", "color", global.PLAYER_1_COLOR);
ini_write_string("player1", "name", global.PLAYER_1_NAME);
ini_close();