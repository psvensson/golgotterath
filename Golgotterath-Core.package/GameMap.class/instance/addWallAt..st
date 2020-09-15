initialization
addWallAt: wall
	|tilename|
	tilename := self class levelWalls at: level ifAbsent: [ 'sandwall' ].
	self addTile: (self getTile: tilename) atx: wall x y: wall y