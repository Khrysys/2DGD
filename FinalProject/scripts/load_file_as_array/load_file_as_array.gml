// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_file_as_array(fname){
	f = open(fname, "r")
	if(f == -1) {
		return [""];
	}
	
	var fileText;
	var lineNum = -1;
	
	do {
		lineNum++;
		fileText[lineNum] = file_text_readln(f);
	} until(!file_text_eof(f));
	
	return fileText;
}