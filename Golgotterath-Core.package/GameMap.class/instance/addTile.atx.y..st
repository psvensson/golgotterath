accessing
addTile: tileSprite atx: x y: y
	tileSprite boardPosition: x@y.
	map at: x@y put: tileSprite .