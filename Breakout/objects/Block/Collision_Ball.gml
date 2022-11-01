/// @description Insert description here
// You can write your code in this editor

num = random_range(0, 100);
if(num >= 93) {
	instance_create_layer(x, y, layer, PowerUp);
}

instance_destroy();