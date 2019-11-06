initialization
initialize
	| floor |
	super initialize .
	map := Dictionary new.
	viewPort := #( #top -> -3. #left -> -3. #bottom -> 3. #right -> 3 ).
	tiles := Tiles new.
	floor := tiles tile: 'floor_grey'.
 	-3 to: 3 do: 
		[ :y | -3 to: 3 do: 
			[ :x | self addTile: floor at: x @ y ] ].
 	tileSize := 32.
	self bounds: (0@0 corner: 700@400). 
 	viewPort := Dictionary new.
 	viewPort at: #top put: -3.
 	viewPort at: #left put: -3.
 	viewPort at: #bottom put: 3.
 	viewPort at: #right put: 3 