accessing
tryToGrowDungeonFrom: pos
	| room |
	room := dungeon getRoomAt: pos.
	room
		ifNotNil: [ (dungeon growRoom: room)
				do: [ :newroom | 
					room floor do: [ :fpos | self addFloorAt: fpos ].
					room walls do: [ :wpos | self addWallAt: wpos ].
					room doors do: [ :door | self addDoorAt: (door at: #pos) ].
					self createItemsFromRoom: room.
					self createEntitiesFromRoom: room ] ] 

