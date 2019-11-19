initialization
initialize
	super initialize .
	gameMap := GameMap new.
	gameMap createDefaultMap. 	
	self bounds: (0@0 corner: 1050@600). 
	self	initializeViewport.
	runningAnimations := Set new.
	gameMap createDefaultEntities.
	gameMap createDefaultItems .
	player := gameMap entitiesAt: 0@0.
	worldCoords := 0@0.
	worldTargetCoords := 0@0.
	worldAnimationFrame := 0.
	boardDrawOffset := 0@0.