accessing
createDefaultMap
	| floor |
	map := Dictionary new.
	tiles := Tiles new.
	floor := tiles tile: 'floor_grey'.
 	-3 to: 3 do: 
		[ :y | -3 to: 3 do: 
			[ :x | self addTile: floor at: x @ y ] ].