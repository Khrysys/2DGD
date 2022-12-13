/// @description Don't go through walls
// You can write your code in this editor

dir_to_move = (180 * keyboard_check(vk_right)) + (90 * keyboard_check(vk_up)) + (270 * keyboard_check(vk_down));
move_outside_solid(dir_to_move, spd + 1);

