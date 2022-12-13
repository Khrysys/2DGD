/// @description Move Left
// You can write your code in this editor
if(!global.IS_PAUSED) {
	x -= spd;
	if(keyboard_check(vk_up)) {
		current_sprite=spr_player_back;
	} else {
		current_sprite = spr_player_front_left;
	}
}