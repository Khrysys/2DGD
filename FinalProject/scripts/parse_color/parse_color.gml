// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parse_color(str){
	switch(str) {
		case "aqua":
			return c_aqua;
		case "black":
			return c_black;
		case "blue":
			return c_blue;
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