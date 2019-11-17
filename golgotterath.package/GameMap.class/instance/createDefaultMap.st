accessing
createDefaultMap
	| floor wall |
	map := Dictionary new.
	floor := (Sprite new) image: (tiles tile: 'floor_grey'); name: 'floor_grey'.
	wall := (Sprite new) image: (tiles tile: 'wall_brown'); name: 'wall_brown'.
 	-8 to: 8 do: 
		[ :y | -3 to: 3 do: 
			[ :x | self addTile: floor atx: x y: y ] ].
	-2 to: 2 do:
		[ :wx | self addTile: wall atx: wx y:2 ].
	-4 to: 0 do:
		[ :wy | self addTile: wall atx: 2 y:wy ].
	^ self.