initialization
createDungeonGeneratorMap
	| downpos startpos actualrooms |
	dungeon := GolDungeonGenerator new.
	dungeon
		level: level;
		digAt: 0 @ 0 depth: 36.
	(dungeon mapFilteredBy: 1) do: [ :floor | self addFloorAt: floor ].
	(dungeon mapFilteredBy: 2) do: [ :door | self addDoorAt: door ].
	(dungeon mapFilteredBy: 3) do: [ :wall | self addWallAt: wall ].
	actualrooms := dungeon rooms
		select: [ :r | (r area at: #type) = #room ].
	dungeon rooms
		do:
			[ :room | room features do: [ :feature | self createFeaturesFromRoom: room ] ].
	downpos := self getFreeTileForRoom: actualrooms first.
	startpos := self getFreeTileForRoom: actualrooms first.
	actualrooms first entities: OrderedCollection new.
	level > 1
		ifTrue: [ startpos
				ifNotNil: [ self addFeature: StairsUp new At: startpos + (0 @ 1) ] ]
		ifFalse: [ self
				addTile: (self getTile: 'statue_dragon')
				atx: startpos x
				y: startpos y ].
	downpos
		ifNotNil: [ self addFeature: StairsDown new At: startpos.
			Transcript
				show: '++++ down stair created';
				cr ]