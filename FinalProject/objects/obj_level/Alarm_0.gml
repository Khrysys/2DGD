/// @description Insert description here
// You can write your code in this editor
if surf == noone{
	
surf = surface_create(room_width, room_height);

}
surface_set_target(surf);
draw_clear_alpha(c_black, darkness);
darkness += fade_rate;
if(darkness >= 1) {
	room = target;
}
surface_reset_target();
alarm[0] = 1;