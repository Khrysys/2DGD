/// @description Insert description here
// You can write your code in this editor


var children = [
	obj_rock_weapon
];

var c = instance_create_layer(x, y, "Instances", children[random_range(0, array_length(children)-1)]);
instance_destroy(self);