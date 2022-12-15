/// @description Insert description here
// You can write your code in this editor

var slot = -1;

for(var i = array_length(items) - 1; i >= 0; i--) {
	if(ds_map_find_value(items[i], "name") == "") {
		slot = i;	
	}
}

if(slot != -1) {
	var item = instance_nearest(x, y, obj_dropped);

	ds_map_set(items[slot], "name", string(item.item) + "-" + string(item.rarity) + "-");
	ds_map_set(items[slot], "spr", item.item);
	ds_map_set(items[slot], "rar", item.rarity);
}