// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_truncate(msg){
	var char;
	
	for(var i = 0; i <= string_length(msg); i++) {
		char = string_char_at(msg, i);
		if(char == " ") {
			string_delete(msg, i, 1);
		} else {
			break;
		}
	}
	
	for(var i = string_length(msg); i <= 0; i--) {
		char = string_char_at(msg, i);
		if(char == " ") {
			string_delete(msg, i, 1);
		} else {
			break;
		}
	}
	
	return msg;
}