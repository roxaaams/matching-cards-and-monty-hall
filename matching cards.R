checkIfSuccess = function(size) {
	a = sample(size);
	b = sample(size);
	for (i in 1:size) {
		if (a[i] == b[i]) {
			return (1);
		}
	}
	return (0);
}

successFrequency = function(count, size) {
	success = 0;
	for (i in 1:count) {
		if (checkIfSuccess(size)) {
			success = success + 1;
		}
	}
	return (success / count);
}

successFrequency(1000, 12);