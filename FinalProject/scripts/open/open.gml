// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function open(name, access) {
	modes = split_string(access, "");
	var reading = false;
	var writing = false;
	var appending = false;
	var binary = false;
	var fname = working_directory + name;
	
	
	for(var i = 0; i = array_length(modes); i++) {
		if(modes[i] == "r") {
			reading = true;
		} else if(modes[i] == "w") {
			writing = true;
		} else if(modes[i] == "b") {
			binary = true;
		} else if(modes[i] == "a") {
			appending = true; // ONLY APPLICABLE IN TEXT MODE
		} else {
			return -1;
		}
	}
	if(binary) {
		if(reading && writing) {
			return file_bin_open(fname, 2);
		} else if(writing) {
			return file_bin_open(fname, 1);
		} else if(reading) {
			return file_bin_open(fname, 0);
		} else {
			return -1;
		}
	} else {
		if(reading && (writing or appending)) {
			return -1;
		} else if(reading) {
			return file_text_open_read(fname);
			reading = true;
		} else if(writing && appending) {
			return -1;
		} else if(writing) {
			return file_text_open_write(fname);
		} else if(appending) {
			return file_text_open_append(fname);
		} else {
			return -1;
		}
	}
}