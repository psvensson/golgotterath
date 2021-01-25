initialization
isBlocking: pos

	| rv |
	rv := gameMap isWallAt: pos.
	^ rv