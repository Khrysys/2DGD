/// @desc GENETIC ALGORITHM

// When all have died, find who performed best
if (instance_number(specimens) == 0) {
	// Genetic Algorithm
	neural_genetic_selection(population);
	neural_genetic_crossover(population, .1);
	neural_genetic_mutate(population, .3, 1, .2, .05);
	generation++;
	best = max(best, time);
	time = 0;
		
	// Restart and start with new generation
	instance_destroy(walls);
	instance_activate_object(specimens);
	with(specimens) {
		Restart();
	}
}
