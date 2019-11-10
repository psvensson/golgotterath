accessing
createDefaultMap
	| floor wall |
	map := Dictionary new.
	tiles := Tiles new.
	floor := (Sprite new) image: (tiles tile: 'floor_grey').
	wall := (Sprite new) image: (tiles tile: 'wall_brown').
 	-3 to: 3 do: 
		[ :y | -3 to: 3 do: 
			[ :x | self addTile: floor at: x @ y ] ].
	-1 to: 2 do:
		[ :wx | self addTile: wall at: wx @ 2 ]