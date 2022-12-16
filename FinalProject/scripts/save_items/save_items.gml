// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_items(player, items){
	var item_str = "";
	for(var i = 0; i < array_length(items); i++) {
		item_str += string(ds_map_find_value(items[i], "name")) + ";";
	}
	ini_write_string(player, "items", item_str);
	
	for(var i = 0; i < array_length(items); i++) {
		if(ds_map_find_value(items[i], "name") != "") {
			var name = ds_map_find_value(items[i], "name");
			ini_write_string(name, "type", ds_map_find_value(items[i], "type"));
			if(ds_map_find_value(items[i], "type") == "weapon") {
				ini_write_string(name, "atk", ds_map_find_value(items[i], "atk"));	
				ini_write_string(ds_map_find_value(items[i], "name"), "spd", ds_map_find_value(items[i], "spd"));
				ini_write_string(ds_map_find_value(items[i], "name"), "cap", ds_map_find_value(items[i], "cap"));
				ini_write_string(ds_map_find_value(items[i], "name"), "rspd", ds_map_find_value(items[i], "rspd"));
				ini_write_string(ds_map_find_value(items[i], "name"), "opt", ds_map_find_value(items[i], "opt"));
				ini_write_string(ds_map_find_value(items[i], "name"), "fal", ds_map_find_value(items[i], "fal"));
				ini_write_string(ds_map_find_value(items[i], "name"), "max", ds_map_find_value(items[i], "max"));
			}
		}
	}
}