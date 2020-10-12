accessing
addTile: gameTile at: boardPosition
	gameTile boardPosition: boardPosition.
	map at: boardPosition put: gameTile