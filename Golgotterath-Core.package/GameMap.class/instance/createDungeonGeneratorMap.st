initialization
createDungeonGeneratorMap
	dungeon := GolDungeonGenerator new.
	dungeon
		level: level;
		digAt: 0 @ 0 depth: 36.
	self addDungeonTiles: dungeon.
	actualrooms := self actualRooms.
	dungeon rooms
		do:
			[ :room | room features do: [ :feature | self createFeaturesFromRoom: room ] ].
	self addDungeonStairsFromRooms: actualrooms 