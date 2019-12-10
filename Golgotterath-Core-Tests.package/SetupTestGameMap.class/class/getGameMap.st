generation
getGameMap
	| gameMap |
	gameMap := GameMap new.
	-2  to: 2 do: 
		[ :y | -2 to: 2 do: 
			[ :x | gameMap  addTile: (gameMap  getTile: 'floor_grey') atx: x y: y ] ].
	gameMap  addTile: (gameMap  getTile: 'wall_brown') atx: -1 y: -1.
	gameMap  addTile: (gameMap  getTile: 'wall_brown') atx: -1 y: 1.
	gameMap  addTile: (gameMap  getTile: 'wall_brown') atx: 1 y: -1.
	gameMap  addTile: (gameMap  getTile: 'wall_brown') atx: 1 y: 1.
	^ gameMap