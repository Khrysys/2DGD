/// @description Load data from file
// You can write your code in this editor

sector = "player1";

ini_open(global.SAVE_NAME);
color = ini_read_real(sector, "color", c_white);
name = ini_read_string(sector, "name", "Player 1");
// STATS
lvl = ini_read_real(sector, "level", 1);
max_hp = ini_read_real(sector, "hp", 10);
current_hp = ini_read_real(sector, "chp", max_hp);
max_mp = ini_read_real(sector, "mp", 10);
current_mp = ini_read_real(sector, "cmp", max_mp);
atk = ini_read_real(sector, "atk", 5);
def = ini_read_real(sector, "def", 5);
spd = ini_read_real(sector, "spd", 5);
items = string_split(ini_read_string(sector, "items", ";;;;;;;;"), ";");
show_debug_message(string(items));
ini_close();

pause_display = 0
temp_name = name;
current_sprite = spr_player_front_left;
global.IS_PAUSED = false;