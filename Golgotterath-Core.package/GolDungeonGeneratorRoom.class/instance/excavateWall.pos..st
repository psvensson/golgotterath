accessing
excavateWall: generator pos: p
	| tile |
	tile := generator mapAt: p.
	(tile = 2 or: tile = 1)
		ifFalse: [ generator mapAt: p put: 3.
			walls add: p ].