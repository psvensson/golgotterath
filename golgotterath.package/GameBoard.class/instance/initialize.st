initialization
initialize
	super initialize .
	self createDefaultMap. 	
	self bounds: (0@0 corner: 1050@600). 
	self	initializeViewport.
	runningAnimations := Set new.
	self createDefaultEntities.
 	