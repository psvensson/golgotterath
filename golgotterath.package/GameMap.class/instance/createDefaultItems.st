accessing
createDefaultItems
	| robe1 robe2 |
	robe1 := OrangeRobe new.	
	self addItem: robe1 at: (0@3).
	robe2 := BlueRobe new.	
	self addItem: robe2 at: (2@3).
	^ self.