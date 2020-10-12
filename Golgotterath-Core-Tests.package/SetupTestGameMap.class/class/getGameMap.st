generation
getGameMap
	| gameMap |
	gameMap := GameMap new.
	-2 to: 2 do: [ :y | 
		-2 to: 2 do: [ :x | 
			gameMap
				addTile:
					(gameMap
						getTile: 'floor_grey';
						boardPosition: x @ y) ] ].
	gameMap
		addTile:
			(gameMap
				getTile: 'wall_brown';
				boardPosition: -1 @ -1).
	gameMap
		addTile:
			(gameMap
				getTile: 'wall_brown';
				boardPosition: -1 @ 1).
	gameMap
		addTile:
			(gameMap
				getTile: 'wall_brown';
				boardPosition: 1 @ -1).
	gameMap
		addTile:
			(gameMap
				getTile: 'wall_brown';
				boardPosition: 1 @ 1).
	^ gameMap