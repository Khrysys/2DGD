// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move(obj){
	if(!place_empty(obj.x, obj.y + obj.vspeed +1)) {
		if(place_meeting(x, y, obj_enemy)) {
			obj.vspeed = -10;
		} else {
			move_contact_solid(270, obj.vspeed);	
			obj.vspeed = 0;
		}
	} else {
		obj.vspeed++;
	}
	
	// Get input
	var x_movement = -keyboard_check(vk_left) + keyboard_check(vk_right);
	if(x_movement >= 1) {
		obj.hspeed = global.PLAYER_SPEED;
	} else if( x_movement <= -1) {
		
	}
	// Check jumping
	if(!abs(obj.vspeed) > 0 && keyboard_check(vk_space)) {
		obj.vspeed = -global.PLAYER_JUMP_SPEED;
	}
	
	// Cap values and change speed & direction
	if(obj.vspeed > global.PLAYER_JUMP_SPEED) {
		obj.vspeed = global.PLAYER_JUMP_SPEED;
	} else if(obj.vspeed < -global.PLAYER_JUMP_SPEED) {
		obj.vspeed = -global.PLAYER_JUMP_SPEED;	
	}
	
	if(obj.speed > global.PLAYER_MAX_SPEED) {
		obj.speed = global.PLAYER_MAX_SPEED;
	}
}