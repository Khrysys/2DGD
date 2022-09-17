// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function split_string(str, delimeter){
	var out;
	var slot = 0;
	var str2;
	var curStr;
	
	for(var i = 1; i < (string_length(str)+1); i++) {
		curStr = string_copy(str, i, 1);
		if(curStr == delimeter) {
			out[slot] = str2;
			slot++;
			str2 = "";
		} else {
			str2 = str2 + curStr;
			out[slot] = str2;
		}
	}
	
	return out;
}