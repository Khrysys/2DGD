/// @description Insert description here
// You can write your code in this editor

if(strength > 66) {
	draw_sprite_general(spr_strengthBar, 3, 0, 0, 
		spr_strengthBar.sprite_width,spr_strengthBar.sprite_height,
		0, 0, 1, strength / 100,
		0, 
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 
		3
	);
} else if(strength > 33 && strength < 66) {
	draw_sprite_general(spr_strengthBar,
		3, 
		0, 0, 
		spr_strengthBar.sprite_width,spr_strengthBar.sprite_height,
		0, 0, 1, strength / 100,
		0, 
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 
		2
	);
} else {
	draw_sprite_general(spr_strengthBar,
		3, 
		0, 0, 
		spr_strengthBar.sprite_width,spr_strengthBar.sprite_height,
		0, 0, 1, strength / 100,
		0, 
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 
		1
	);
}

draw_sprite_general(spr_strengthBar,
	3, 
	0, 0, 
	spr_strengthBar.sprite_width,spr_strengthBar.sprite_height,
	0, 0, 1, 1,
	0, 
	0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 
	0
);