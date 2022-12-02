/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_text(0, 0, "Score: " + string(score));
if(instance_exists(Block)) {
	if(lives >= 0) {
		draw_text(0, 10, "Lives Remaning: " + string(lives));
	} else {
		while(instance_exists(Ball)) {
			instance_destroy(Ball);
		}
		draw_text(0, 12, "You Lost");
	}
} else {
	draw_text(0, 12, "You Win");
}