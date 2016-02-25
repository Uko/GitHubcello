instance creation
endTime: aTime

	^ (self code: 403) "acording to: https://developer.github.com/v3/#rate-limiting"
		endTime: aTime;
		yourself