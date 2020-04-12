initialization
createBetterDungeonMap
	| dungeon cells |
	^ [ dungeon := BetterDungeons new.
	dungeon gridWidth: mapRadius * 2.
	dungeon gridLength: mapRadius * 2.
	dungeon createDungeon.
	Logger
		log: '---- plotting dungeon on map -----';
		cr.
	GolUtil
		from: mapRadius negated @ mapRadius negated
		to: mapRadius @ mapRadius
		do:
			[ :pos | self addTile: (self getTile: 'floor_grey') atx: pos x y: pos y ].
	cells := dungeon getMapCells.
	cells
		do: [ :cell | 
			self
				addTile: (self getTile: 'wall_brown')
				atx: cell x - mapRadius
				y: cell y - mapRadius ].
	self addTile: (self getTile: 'stairs_down') atx: -4 y: 4.
	self addTile: (self getTile: 'statue_dragon') atx: 2 y: 4 ] future