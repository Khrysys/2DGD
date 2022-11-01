/// @description Insert description here
// You can write your code in this editor

if(isCountingUp) {
	if(strength > 100) {
		isCountingUp = false;
	} else {
		strength += countSpeed; 
	}
} else {
	if(strength < 0) {
		isCountingUp = true;
	} else {
		strength -= countSpeed;
	}
}