accessing
excavateWall: generator pos: p
	(generator mapAt:p) = 2 ifFalse: [ generator mapAt: p put: 3. ]