initialization
createDungeonGeneratorMap
	^ [ dungeon := GolDungeonGenerator new.
	dungeon digAt: 0 @ 0 depth: 32.
	(dungeon mapFilteredBy: 1) do: [ :floor | self addFloorAt: floor ].
	(dungeon mapFilteredBy: 2) do: [ :door | self addDoorAt: door ].
	(dungeon mapFilteredBy: 3) do: [ :wall | self addWallAt: wall ].
	self addTile: (self getTile: 'stairs_down') atx: -4 y: 4.
	self addTile: (self getTile: 'statue_dragon') atx: 2 y: 4 ] future