accessing
addRunningAnimation: anEntity
	runningAnimations add: anEntity.
	self startStepping.