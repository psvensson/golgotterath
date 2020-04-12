initialization
createDefaultItems
	^ [ 
	self addItem: (GameItem new: 'orange_robe') at: self getFreeTile.
	self addItem: (GameItem new: 'blue_robe') at:self getFreeTile.
	self addItem: (GameItem new: 'yellow_robe') at: self getFreeTile.
	self addItem: (GameItem new: 'small_wooden_chest') at: self getFreeTile.
	self addItem: (GameItem new: 'copper_pieces') at: self getFreeTile.
	self addItem: (GameItem new: 'blue_crystal') at: self getFreeTile.
	self addItem: (GameItem new: 'short_sword') at: self getFreeTile.
	self addItem: (GameItem new: 'long_sword') at: self getFreeTile.
	self addItem: (GameItem new: 'mace') at: self getFreeTile.
	self addItem: (GameItem new: 'leather_armour') at: self getFreeTile.
	self addItem: (GameItem new: 'studded_leather_armour') at: self getFreeTile.
	self addItem: (GameItem new: 'small_healing_potion') at: self getFreeTile.
	self addItem: (GameItem new: 'large_healing_potion') at: self getFreeTile.
	] future