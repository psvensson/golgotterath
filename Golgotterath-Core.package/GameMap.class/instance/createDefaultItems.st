accessing
createDefaultItems
	| robe1 robe2 robe3 sword1 |
	robe1 := GameItem new: 'orange_robe'.
	self addItem: robe1 at: (0@3).
	robe2 := GameItem new: 'blue_robe'.
	self addItem: robe2 at: (1@3).
	robe3 := GameItem new: 'yellow_robe'.		
	self addItem: robe3 at: (2@3).
	sword1 := GameItem new: 'short_sword'.		
	self addItem: sword1 at: (1@0).
	^ self.