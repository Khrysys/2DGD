// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_new_save(){
	var f = file_text_open_write("C:/Usersave" + string(global.saveID) + ".json");
	show_debug_message(working_directory);
	if(f == -1) {
		exit;
	}
	
	var json_starting_config = "\"PlayerData\":{\n\t\"Level\": 1,\n\t\"Inventory\": {\n\t\t1: {\n\t\t\t\"id\"\t: 0\n\t\t}\n\t}\n}";
	show_debug_message(json_starting_config);
	file_text_write_string(f, json_starting_config);
	file_text_close(f);
}