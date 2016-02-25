as yet unclassified
load

	Metacello new
		repository: ('github://{1}/{2}' format: { user . repo });
		baseline: name;
		load