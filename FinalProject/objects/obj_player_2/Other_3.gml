/// @description Dump Data
// You can write your code in this editor

ini_open(global.SAVE_NAME);
ini_write_real("player2", "color", color);
ini_write_string("player2", "name", name);
// STATS
ini_write_real("player2", "level", lvl);
ini_write_real("player2", "hp", max_hp);
ini_write_real("player2", "chp", current_hp);
ini_write_real("player2", "mp", max_mp);
ini_write_real("player2", "cmp", current_mp);
ini_write_real("player2", "atk", atk);
ini_write_real("player2", "def", def);
ini_write_real("player2", "spd", spd);
ini_close();