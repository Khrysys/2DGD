/// @description Insert description here
// You can write your code in this editor
var ball_count =  instance_number(Ball)
for(var i = 0; i < ball_count; i++) {
	instance_create_layer(Paddle.x + 60, Paddle.y - 32, Paddle.layer, Ball);
	lives += 3;
}


instance_destroy();