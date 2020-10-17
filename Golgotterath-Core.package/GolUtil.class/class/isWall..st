testing
isWall: tile
	^ (self isFloor: tile) not and: (self isBedrock: tile) not