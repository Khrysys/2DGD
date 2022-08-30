// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BallIdle(object){
	if(object.bbox_bottom >= 0) {
		object.phy_speed_y = -1 * object.phy_speed_y;	
	} else {
		object.phy_speed_y -= 9.8;
	}
}