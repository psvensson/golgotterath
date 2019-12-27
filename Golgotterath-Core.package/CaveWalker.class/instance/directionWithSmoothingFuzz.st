initialization
directionWithSmoothingFuzz
	^ walkerDirection + ((Random new next) * (self smoothing)) -
										(self smoothing / 2)