/// @description Insert description here
// You can write your code in this editor

ini_open(global.SAVE_NAME);
color = ini_read_real("player1", "color", c_white);
name = ini_read_string("player1", "name", "Player 1");
// STATS
lvl = ini_read_real("player1", "level", 1);
max_hp = ini_read_real("player1", "hp", 10);
current_hp = ini_read_real("player1", "chp", max_hp);
max_mp = ini_read_real("player1", "mp", 10);
current_mp = ini_read_real("player1", "cmp", max_mp);
atk = ini_read_real("player1", "atk", 5);
def = ini_read_real("player1", "def", 5);
spd = ini_read_real("player1", "spd", 5);
ini_close();

current_sprite = spr_player_front_left;