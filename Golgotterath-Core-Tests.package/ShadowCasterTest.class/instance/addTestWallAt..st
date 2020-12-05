test
addTestWallAt: pos
	|wall|
	wall := shadowCaster gamemap getTile: 'greywall'.
	wall boardPosition: pos.
	shadowCaster gamemap addTile: wall at: pos.
	^ wall