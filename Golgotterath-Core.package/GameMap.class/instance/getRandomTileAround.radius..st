accessing
getRandomTileAround: pos radius: r
	|x y|
	x := (pos x + r) atRandom .
	y := (pos y + r) atRandom .
	^ x@y