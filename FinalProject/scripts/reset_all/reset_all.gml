// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_all(){
	global.current_floor = -1;
	global.difficulty = -1;
	global.layout = [];
	global.save_button_offset_x = 200;
	global.saveID = 0;
	if(room != init_room) {
		room=init_room;
	}
}