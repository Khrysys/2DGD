/// @description Insert description here
// You can write your code in this editor

if(place_empty(x, y + 1) && place_empty(x, y + yspeed)) {
	gravity = 1;
} else {
	gravity = 0;
}