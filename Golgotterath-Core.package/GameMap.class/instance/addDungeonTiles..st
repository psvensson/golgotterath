initialization
addDungeonTiles: d
	(d mapFilteredBy: 1) do: [ :floor | self addFloorAt: floor ].
	(d mapFilteredBy: 2) do: [ :door | self addDoorAt: door ].
	(d mapFilteredBy: 3) do: [ :wall | self addWallAt: wall ].