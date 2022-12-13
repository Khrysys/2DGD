/// @description Load data from file
// You can write your code in this editor



ini_open(global.SAVE_NAME);
color = ini_read_real("player2", "color", c_white);
name = ini_read_string("player2", "name", "Player 2");
// STATS
lvl = ini_read_real("player2", "level", 1);
max_hp = ini_read_real("player2", "hp", 10);
current_hp = ini_read_real("player2", "chp", max_hp);
max_mp = ini_read_real("player2", "mp", 10);
current_mp = ini_read_real("player2", "cmp", max_mp);
atk = ini_read_real("player2", "atk", 5);
def = ini_read_real("player2", "def", 5);
spd = ini_read_real("player2", "spd", 5);
items = string_split(ini_read_string("player2", "items", ";;;;;;;;;;"), ";", []);

ini_close();

current_sprite = noone;
global.IS_PAUSED = false;