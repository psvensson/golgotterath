accessing
createDefaultMap
	| start stop |
 	stop := self mapRadius.	
	start := stop negated.	
	start  to: stop do: 
		[ :y | start to: stop do: 
			[ :x | self addTile: (self getTile: 'floor_grey') atx: x y: y ] ].
	-2 to: 2 do:
		[ :wx | self addTile: (self getTile: 'wall_brown')  atx: wx y:2 ].
	-4 to: 0 do:
		[ :wy | self addTile: (self getTile: 'wall_brown') atx: 2 y:wy ].
	self addTile: (self getTile: 'door_closed_x')  atx: 2 y:-1.
	self addTile: (self getTile: 'door_closed_y') atx: -1 y:2.
	self addTile: (self getTile: 'stairs_down')  atx: -4 y:4.
	self addTile: (self getTile: 'statue_dragon')  atx: 2 y:4.
	^ self