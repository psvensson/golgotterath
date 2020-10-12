initialization
addWallAt: wall
	| tilename tile |
	tilename := self class levelWalls at: level ifAbsent: [ 'sandwall' ].
	tile := self getTile: tilename.
	self addTile: tile at: wall x @ wall y.