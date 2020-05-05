initialization
createDungeonGeneratorMap
	| dungeon |
	^ [ dungeon := GolDungeonGenerator new.
	dungeon digAt: 0 @ 0 depth: 8.
	(dungeon mapFilteredBy: 1)
		do:
			[ :floor | self addTile: (self getTile: 'floor_grey') atx: floor x y: floor y ].
	(dungeon mapFilteredBy: 2)
		do: [ :door | 
			| tileSprite |
			tileSprite := DoorSprite new.
			tileSprite
				boardPosition: door x @ door y;				
				rotated: (dungeon mapAt: (door x + 1) @ door y) = 1;close.
			map at: door x @ door y put: tileSprite ].
	(dungeon mapFilteredBy: 3)
		do:
			[ :wall | self addTile: (self getTile: 'bluewall') atx: wall x y: wall y ].
	self addTile: (self getTile: 'stairs_down') atx: -4 y: 4.
	self addTile: (self getTile: 'statue_dragon') atx: 2 y: 4 ] future