accessing
createDefaultMap
	| floor wall door_x door_y stairs_down portal_blue|
	map := Dictionary new.
	floor := (Sprite new) image: (tiles tile: 'floor_grey'); name: 'floor_grey'.
	wall := (Sprite new) image: (tiles tile: 'wall_brown'); name: 'wall_brown'.
	door_x := (Sprite new) image: (tiles tile: 'door_closed_x'); name: 'door_closed_x'.
	door_y := (Sprite new) image: (tiles tile: 'door_closed_y'); name: 'door_closed_y'.
	stairs_down := (Sprite new) image: (tiles tile: 'stairs_down'); name: 'stairs_down'.
	portal_blue := (Sprite new) image: (tiles tile: 'portal_blue'); name: 'portal_blue'.
 	-8 to: 8 do: 
		[ :y | -3 to: 3 do: 
			[ :x | self addTile: floor atx: x y: y ] ].
	-2 to: 2 do:
		[ :wx | self addTile: wall atx: wx y:2 ].
	-4 to: 0 do:
		[ :wy | self addTile: wall atx: 2 y:wy ].
	self addTile: door_x atx: 2 y:-1.
	self addTile: door_y atx: -1 y:2.
	self addTile: stairs_down atx: -4 y:4.
	self addTile: portal_blue atx: 2 y:4.
	^ self.