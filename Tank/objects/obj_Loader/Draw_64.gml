/// @description Insert description here
// You can write your code in this editor
var binf = file_bin_open(working_directory + "/file.bin", 0);
var buf = buffer_create(32, buffer_fixed, 4);
var type;

if(i <= global.FLOOR_COUNT) {
	if(j > global.WORLD_SIZE) {
		i++;
		j = 0;
		k = 0;
	} else {
		if(k > global.WORLD_SIZE) {
			j++;
			k = 0;
		} else {
			type = irandom_range(0, global.MAX_BLOCK_TYPES);
			draw_text(0, 0, "floor:" + string(i) + ", x:"+string(j) + ", y" + string(k) + ", type:" + string(type));
			k++;
			buffer_write(buf, buffer_u32, type);
			buffer_save_async(buf, binf, 4, 4)
		}
	}
} else {
	draw_text(0, 0, "Layout creation complete");
}

