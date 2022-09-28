/// @desc SPECIMEN CONSTRUCTOR

// Create network
nn = new neural_network();
nn.add.Input(1);
nn.add.Dense(1, ActFunc.IDENTITY);

// Specimen variables
image_blend = make_color_hsv(irandom(255), 192, 192);
vspd	= 0;	// Vertical speed
button	= 0;	// Pressing jump-button
fitness = 0;	// for Genetic Algorithm

// Restart for next round
Restart = function() {
	y		= 0;
	vspd	= 0;
	fitness = 0; 
}
	


