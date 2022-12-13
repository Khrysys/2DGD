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
array_resize(items, 9);
for(i = 0; i < array_length(items); i++) {
	item = ds_map_create();
	ds_map_set(item, "name", items[i]);
	ds_map_set(item, "type", ini_read_string(items[i], "type", "none"));
	if(ds_map_find_value(item, "type" == "weapon")) {
		ds_map_set(item, "atk", ini_read_string(items[i], "atk", "0"));
		ds_map_set(item, "spd", ini_read_string(items[i], "spd", "0"));
		ds_map_set(item, "cap", ini_read_string(items[i], "cap", "1"));
		ds_map_set(item, "rspd", ini_read_string(items[i], "rspd", "0"));
		ds_map_set(item, "opt", ini_read_string(items[i], "opt", "0"));
		ds_map_set(item, "fal", ini_read_string(items[i], "fal", "0"));
		ds_map_set(item, "max", ini_read_string(items[i], "max", "0"));
	}
	items[i] = item;
	show_debug_message(string(item))
}
ini_close();

pause_display = 0
temp_name = name;
current_sprite = spr_player_front_left;
global.IS_PAUSED = false;