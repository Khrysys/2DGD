/// @description Insert description here
// You can write your code in this editor

draw_text_color(125, 125, "What's your name?", c_white, c_white, c_white, c_white, 1);
if(self.step == 0) {
	draw_text_color(150, 150, keyboard_string, c_white, c_white, c_white, c_white, 1);
	if(keyboard_check(vk_enter) && keyboard_string != "") {
		global.PLAYER_1_NAME = keyboard_string;
		keyboard_string = "";
		self.step = 1;
	}
} else if(self.step == 1) {
	draw_text_color(125, 150, global.PLAYER_1_NAME, c_white, c_white, c_white, c_white, 1);
	draw_text_color(125, 200, "What's your favorite color?", c_white, c_white, c_white, c_red, 1);
	draw_text_color(150, 225, keyboard_string, c_red, c_white, c_white, c_white, 1);
	if(keyboard_check(vk_enter)) {
		switch(keyboard_string) {
			case "aqua":
				global.PLAYER_1_COLOR = c_aqua;
				self.step = 2;
			case "black":
				global.PLAYER_1_COLOR = c_black;
				self.step = 2;
			case "blue":
				global.PLAYER_1_COLOR = c_blue;
				self.step = 2;
			case "dkgray":
				global.PLAYER_1_COLOR = c_dkgray;
				self.step = 2;
			case "dkgrey":
				global.PLAYER_1_COLOR = c_dkgrey;
				self.step = 2;
			case "fuchsia":
				global.PLAYER_1_COLOR = c_fuchsia;
				self.step = 2;
			case "gray":
				global.PLAYER_1_COLOR = c_gray;
				self.step = 2;
			case "green":
				global.PLAYER_1_COLOR = c_green;
				self.step = 2;
			case "grey":
				global.PLAYER_1_COLOR = c_grey;
				self.step = 2;
			case "lime":
				global.PLAYER_1_COLOR = c_lime;
				self.step = 2;
			case "ltgray":
				global.PLAYER_1_COLOR = c_ltgray;
				self.step = 2;
			case "ltgrey":
				global.PLAYER_1_COLOR = c_ltgrey;
				self.step = 2;
			case "maroon":
				global.PLAYER_1_COLOR = c_maroon;
				self.step = 2;
			case "navy":
				global.PLAYER_1_COLOR = c_navy;
				self.step = 2;
			case "olive":
				global.PLAYER_1_COLOR = c_olive;
				self.step = 2;
			case "orange":
				global.PLAYER_1_COLOR = c_orange;
				self.step = 2;
			case "purple":
				global.PLAYER_1_COLOR = c_purple;
				self.step = 2;
			case "red":
				global.PLAYER_1_COLOR = c_red;
				self.step = 2;
			case "silver":
				global.PLAYER_1_COLOR = c_silver;
				self.step = 2;
			case "teal":
				global.PLAYER_1_COLOR = c_teal;
				self.step = 2;
			case "white":
				global.PLAYER_1_COLOR = c_white;
				self.step = 2;
			case "yellow":
				global.PLAYER_1_COLOR = c_yellow;
				self.step = 2;
			default:
				keyboard_string = "";
		}
	}
} else if(self.step == 2) {
	draw_text_color(125, 150, global.PLAYER_1_NAME, c_white, c_white, c_white, c_white, 1);
	draw_text_color(125, 200, "What's your favorite color?", c_white, global.PLAYER_1_COLOR, c_white, c_red, 1);
	draw_text_color(125, 225, global.PLAYER_1_COLOR, c_red, c_white, global.PLAYER_1_COLOR, c_white, 1);
	draw_text_color(125, 275, "Ready to p l a y ?", c_red, global.PLAYER_1_COLOR, c_red, c_red, 1);
	draw_text_color(window_get_width() - 125, 300, keyboard_string, global.PLAYER_1_COLOR, global.PLAYER_1_COLOR, global.PLAYER_1_COLOR, global.PLAYER_1_COLOR, 1);
	if(keyboard_check(vk_enter) && keyboard_string == "yes") {
		room = room_start;
	} else if(keyboard_check(vk_enter) && keyboard_string == "no") {
		room = room_init;
	} else {
		keyboard_string = "";
	}
}
