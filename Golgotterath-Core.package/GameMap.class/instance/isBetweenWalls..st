accessing
isBetweenWalls: pos
	^ ((self isWallAt: (pos x + 1) @ pos y)
		and: (self isWallAt: (pos x - 1) @ pos y))
		or:
			((self isWallAt: pos x @ (pos y + 1))
				and: (self isWallAt: pos x @ (pos y - 1)))