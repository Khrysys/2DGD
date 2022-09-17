// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_save_data() {
	var result;
	
	result = get_current_floor_number();
	if(!result) {
		return false;
	}
	
	result = get_current_difficulty();
	if(!result) {
		return false;
	}
	
	result = load_floor();
	if(!result) {
		return false;
	}
	
	return true;
}