// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move_vanek(){
	var move = -keyboard_check(vk_left) + keyboard_check(vk_right);
	var collision = instance_place(x+global.PLAYER_MAX_SPEED, y+vspeed, all);

	if (move >= 1){
	
		if (collision < 0 or !object_get_solid(collision.object_index)){
			x += global.PLAYER_MAX_SPEED;
		}
	
		else{  
			move_contact_solid(0, global.PLAYER_MAX_SPEED);
		}
	}

	else if (move == -1){
		collision = instance_place(x-global.PLAYER_MAX_SPEED, y+vspeed, all)
		if ( collision < 0 or !object_get_solid(collision.object_index)){
			x -= global.PLAYER_MAX_SPEED;
		}
	
		else{
			move_contact_solid(180, global.PLAYER_MAX_SPEED);		
		}
	}

	if (place_empty(x, y + 1)) {
		if (collision < 0 or !object_get_solid(collision.object_index)){
			y -= vspeed;
		}
	
		// Check for a SOLID object below you
		else if (jumpSpeed < 0  and  object_get_solid(collision.object_index)){
			move_contact_solid(270, jumpSpeed)
			jumpSpeed = 0
		}
	
		// Check for a SOLID object above you
		else if (jumpSpeed > 0  and  object_get_solid(collision.object_index)){
			move_contact_solid(90, jumpSpeed)
			jumpSpeed = -0.1
		}
		jumpSpeed -= grav;
		if (jumpSpeed < -maxFall){
			jumpSpeed = -maxFall;
		}
	}

	// If you are on SOLID ground, allow the player to jump again.
	if (!place_empty(x, y+1) and instance_place(x, y + 1, all) > 0 and object_get_solid( instance_place(x, y + 1, all).object_index)){
		canJump = true;
	}
}