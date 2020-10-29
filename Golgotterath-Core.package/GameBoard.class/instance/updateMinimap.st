action
updateMinimap

	| actualrooms downpos startpos |
	
	minimap generateMap.
	actualrooms := gameMap dungeon rooms select: [ :r | 
		               (r area at: #type) = #room ].
	downpos := gameMap getFreeTileForRoom: actualrooms last.
	startpos := gameMap getFreeTileForRoom: actualrooms first.
	minimap plotPointAt: gameMap upstairsPos  color: Color pink.
	minimap plotPointAt: gameMap downstairsPos  color: Color black.

	minimap updatePlayerPointer.
	minimap changed