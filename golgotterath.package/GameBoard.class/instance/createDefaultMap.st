accessing
createDefaultMap
	| floor wall |
	map := Dictionary new.
	tiles := Tiles new.
	floor := (Sprite new) image: (tiles tile: 'floor_grey'); name: 'floor_grey'.
	wall := (Sprite new) image: (tiles tile: 'wall_brown'); name: 'wall_brown'.
 	-3 to: 3 do: 
		[ :y | -3 to: 3 do: 
			[ :x | self addTile: floor atx: x y: y ] ].
	-1 to: 2 do:
		[ :wx | self addTile: wall atx: wx y:2 ].
	"-2 to: 0 do:
		[ :wy | self addTile: wall at:  2@wy ]"
	^ self.