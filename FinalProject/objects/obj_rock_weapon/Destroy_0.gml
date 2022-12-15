/// @description Insert description here
// You can write your code in this editor

var possible_weapons = [
	spr_shortsword_steel
];

var rarity = noone;
var i = random_range(0, 1000);
if(i <= 900) {
	rarity = spr_item_border_common;
} else if(i <= 950) {
	rarity = spr_item_border_uncommon;
} else if(i <= 975) {
	rarity = spr_item_border_rare;
} else if(i <990) {
	rarity = spr_item_border_epic;
} else {
	rarity = spr_item_border_legendary;
}

i = instance_create_layer(x, y, "Instances", obj_dropped);
item = random_range(0, array_length(possible_weapons)-1);
i.item = possible_weapons[item];
i.rarity = rarity;
i.itype = "weapon";
i.atk = (item + 1) * rarity;



obj_player_1.ex++;