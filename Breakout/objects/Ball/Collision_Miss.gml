/// @description Insert description here
// You can write your code in this editor

instance_destroy(self);
lives -= 1;
if(lives >= 0)
	instance_create_layer(Paddle.x, Paddle.y - 50, "Instances", Ball);
