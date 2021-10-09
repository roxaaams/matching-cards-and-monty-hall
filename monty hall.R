randRoom = function() {
	return (sample(1:3, 1)[1]);
}

randRoom();

simulate1 = function(sw) {
	win = randRoom();
	if (win == 1) {
		# The contestant has chosen the winning door
		# Doesn't matter what door the host chooses,
		# the outcome is the same
		if (sw) {
			return (0);
		}
		return (1);
	}
	# The contestant has chosen the losing door
	if (sw) {
		return (1);
	}
	return (0);
}

simulate2 = function(sw) {
	win = randRoom();
	if (win == 1) {
		if (sw) {
			return (0)
		}
		return (1);
	}
	return (0);
}

simulate3 = function(sw) {
	win = randRoom();
	if (win == 1) {
		if (sw) {
			return (0);
		}
		return (1);
	}
	if (sw && sample(1:2, 1) == 1) {
		return (1);
	}
	return (0);
}

simulate = function(count, simfnc, sw) {
	success = 0;
	for (i in 1:count) {
		if (simfnc(sw)) {
			success = success + 1;
		}
	}
	return (success / count);
}

simulate(1000, simulate1, 0);
simulate(1000, simulate2, 0);
simulate(1000, simulate3, 0);
simulate(1000, simulate1, 1);
simulate(1000, simulate2, 1);
simulate(1000, simulate3, 1);