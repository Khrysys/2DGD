/// @description Insert description here
// You can write your code in this editor

var slot = -1;

for(var i = array_length(obj_player_1.items) - 1; i >= 0; i--) {
	if(ds_map_find_value(obj_player_1.items[i], "name") == "") {
		slot = i;	
	}
}

if(slot != -1) {
	instance_destroy(self);
}