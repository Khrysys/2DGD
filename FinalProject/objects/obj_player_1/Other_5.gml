/// @description Insert description here
// You can write your code in this editor

/// @description Dump Data
// You can write your code in this editor

ini_open(global.SAVE_NAME);
ini_write_real(sector, "color", color);
ini_write_string(sector, "name", name);
// STATS
ini_write_real(sector, "level", lvl);
ini_write_real(sector, "hp", max_hp);
ini_write_real(sector, "chp", current_hp);
ini_write_real(sector, "mp", max_mp);
ini_write_real(sector, "cmp", current_mp);
ini_write_real(sector, "atk", atk);
ini_write_real(sector, "def", def);
ini_write_real(sector, "spd", spd);
ini_write_string(sector, "items", array_concancate(items, ";"));
ini_close();