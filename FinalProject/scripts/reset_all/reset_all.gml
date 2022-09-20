// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_all(){
	global.current_floor = -1;
	global.difficulty = 0;
	global.layout = [[]];
	global.saveName = "";
	if(room != init_room) {
		room=init_room;
	}
}