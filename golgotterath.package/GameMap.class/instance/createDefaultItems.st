accessing
createDefaultItems
	| robe1 robe2 robe3 |
	robe1 := OrangeRobe new.	
	self addItem: robe1 at: (0@3).
	robe2 := BlueRobe new.	
	self addItem: robe2 at: (1@3).
	robe3 := YellowRobe new.	
	self addItem: robe3 at: (2@3).
	^ self.