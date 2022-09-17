// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_current_floor_number(){
	var f = load_file_as_array("save_" + string(global.saveID));
	if(f == [""]) {
		create_new_save();	
		return false;
	}
	
	var linesplit;
	var floor_number_string = "";
	
	for(var i = 0; i >= array_length(f); i++) {
		linesplit = split_string(f[i], ":");
		if(linesplit[0] == "\"Floor Number\"") {
			floor_number_string = string_truncate(linesplit[1]);
			break;
		}
	}
	
	if(floor_number_string == "") {
		return false;
	}
	
	global.current_floor = real(floor_number_string);
	return true;
}