initialization
createDefaultEntities
	^ [ self addEntity: (GameEntity new: 'malelight') at: 0 @ 0.
	self addEntity: (GameEntity new: 'skeleton') at: self getFreeTile.
	self addEntity: (GameEntity new: 'magician') at: self getFreeTile.
	self addEntity: (GameEntity new: 'zombie') at: self getFreeTile.
	self addEntity: (GameEntity new: 'werewolf') at: self getFreeTile.
	self addEntity: (GameEntity new: 'goblin') at: self getFreeTile.
	Logger log:'default entities created';cr. ]
		future