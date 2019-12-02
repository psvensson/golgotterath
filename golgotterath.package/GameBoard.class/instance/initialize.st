initialization
initialize
	super initialize .
	gameMap := GameMap new.
	gameMap createDefaultMap; 
		createDefaultEntities; createDefaultItems; 
		createDijkstraGraph; gameboard: self . 	
	self bounds: (0@0 corner: 1050@600). 
	self	initializeViewport.
	runningAnimations := Set new.	
	player := gameMap entitiesAt: 0@0.
	player player: true.
	worldCoords := 0@0.
	worldTargetCoords := 0@0.
	worldAnimationFrame := 0.
	boardDrawOffset := 0@0.
	topbar := GameBar new.
	topbar bounds: (0@0 corner:1050@35).
	self addMorph: topbar.