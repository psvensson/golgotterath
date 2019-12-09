private-initialization
createDefaultItems
	self addItem: (GameItem new: 'orange_robe') at: (0@3).
	self addItem: (GameItem new: 'blue_robe') at: (1@3).
	self addItem: (GameItem new: 'yellow_robe') at: (2@3).
	self addItem: (GameItem new: 'short_sword') at: (1@0).
	self addItem: (GameItem new: 'long_sword') at: (-3)@3.
	self addItem: (GameItem new: 'mace') at: (-3)@(-4).
	self addItem: (GameItem new: 'leather_armour') at: (-2)@5.
	self addItem: (GameItem new: 'studded_leather_armour') at: 0@(-3).
	^ self.