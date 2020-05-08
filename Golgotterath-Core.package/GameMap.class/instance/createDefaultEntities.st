initialization
createDefaultEntities
	^ [ topbar
		text: 'Creating entites...';
		left: 100.
	self createPlayer.
	dungeon rooms do: [  :room |
		room entities do: [ :entity | | name | name := (entity at: #name).
			Logger log:'Creating entity ',name;cr.
			self addEntity: (GameEntity new: name) at: (self getUnoccupiedTileForRoom: room) ] ].
	Logger
		log: 'default entities created';
		cr ] future