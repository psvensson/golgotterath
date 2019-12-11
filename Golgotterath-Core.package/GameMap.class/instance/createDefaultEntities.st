private-initialization
createDefaultEntities	
	self addEntity: (GameEntity new: 'malelight') at: 0@0.
	self addEntity: (GameEntity new: 'skeleton') at: 3@4.
	self addEntity: (GameEntity new: 'magician') at: 3@0.
	self addEntity: (GameEntity new: 'zombie') at: (-4)@(-3).	
	^ self