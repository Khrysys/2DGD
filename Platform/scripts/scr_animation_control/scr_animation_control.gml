// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_animation_control(){
	var dir = -keyboard_check(vk_left) + keyboard_check(vk_right)

//put your sprite names here:
var jump_right = sMario_jumpR
var walk_right = sMario_right
var jump_left = sMario_jumpL
var walk_left = sMario_left

image_speed = 3
if (dir == 1){
	if (jumping){
		sprite_index = jump_right;
	}
	else {
		sprite_index = walk_right;
	}
}
else if (dir == -1){
	if (jumping){
		sprite_index = jump_left;
	}
	else {
		sprite_index = walk_left;
	}
}
else {
	if (!jumping and sprite_index = jump_right){
		sprite_index = walk_right;
	} else if (!jumping and sprite_index = jump_left){
		sprite_index = walk_left;
	} else if (jumping and sprite_index = walk_right) {
		sprite_index = jump_right;
	} else if (jumping and sprite_index = walk_left) {
		sprite_index = jump_left;
	}
	image_speed = 0;
	image_index = 0;
}
}