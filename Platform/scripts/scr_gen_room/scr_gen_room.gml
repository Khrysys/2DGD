function scr_gen_room(seed){
	show_debug_message(seed);
	var val = 1;
	while(val <= seed) {
		val *= 2;
		show_debug_message(val)
	}
}