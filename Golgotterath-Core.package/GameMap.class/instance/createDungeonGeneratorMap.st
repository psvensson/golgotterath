initialization
createDungeonGeneratorMap
	dungeon := GolDungeonGenerator new.
	dungeon
		level: level;
		digAt: 0 @ 0 depth: 38.
	self addDungeonTiles: dungeon.
	self pruneDoors: (dungeon mapFilteredBy: 1).
	actualrooms := self actualRooms.
	dungeon rooms
		do:
			[ :room | room features do: [ :feature | self createFeaturesFromRoom: room ] ].
	self addDungeonStairsFromRooms: actualrooms 