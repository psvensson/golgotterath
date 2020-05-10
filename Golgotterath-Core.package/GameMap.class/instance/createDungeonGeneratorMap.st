initialization
createDungeonGeneratorMap
	| downpos startpos actualrooms |
	"^ [ "
		dungeon := GolDungeonGenerator new.
	dungeon digAt: 0 @ 0 depth: 32.
	(dungeon mapFilteredBy: 1) do: [ :floor | self addFloorAt: floor ].
	(dungeon mapFilteredBy: 2) do: [ :door | self addDoorAt: door ].
	(dungeon mapFilteredBy: 3) do: [ :wall | self addWallAt: wall ].
	actualrooms := dungeon rooms select: [:r | ((r area) at: #type) = #room ].
	dungeon rooms do: [  :room | room features do: [ :feature | self createFeaturesFromRoom: room] ].
	downpos := self getFreeTileForRoom: (actualrooms last).
	startpos := self getFreeTileForRoom: (actualrooms first).
	self addTile: (self getTile: 'stairs_down') atx: downpos x y: downpos y.
	self addTile: (self getTile: 'statue_dragon') atx: startpos x y: startpos y "] future"
