accessing
createDefaultItems
	| robe1 robe2 robe3 |
	robe1 := (GameItem new) kind: 'armour' named: 'orange_robe'.	
	self addItem: robe1 at: (0@3).
	robe2 := (GameItem new) kind: 'armour' named: 'blue_robe'.		
	self addItem: robe2 at: (1@3).
	robe3 := (GameItem new) kind: 'armour' named: 'yellow_robe'.		
	self addItem: robe3 at: (2@3).
	^ self.