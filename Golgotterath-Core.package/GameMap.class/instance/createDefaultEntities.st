initialization
createDefaultEntities	
	self addEntity: (GameEntity new: 'malelight') at: 0@0.
	self addEntity: (GameEntity new: 'skeleton') at: 5@4.
	self addEntity: (GameEntity new: 'magician') at: 6@2.
	self addEntity: (GameEntity new: 'zombie') at: (-4)@(-3).	
	^ self