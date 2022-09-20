/// @description Insert description here
// You can write your code in this editor

if(self.p1_score >= 10) {
	room = p1_win;
}

if(self.p2_score >= 10) {
	room = p2_win;
}

draw_set_font(Score_font);
draw_set_color(c_white);
draw_text(x + 32, y, self.p2_score);
draw_text(x, y, self.p1_score);