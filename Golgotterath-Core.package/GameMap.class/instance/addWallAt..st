initialization
addWallAt: wall
	|tilename|
	tilename := self class levelWalls at: level ifAbsent: [ 'bluewall' ].
	self addTile: (self getTile: tilename) atx: wall x y: wall y