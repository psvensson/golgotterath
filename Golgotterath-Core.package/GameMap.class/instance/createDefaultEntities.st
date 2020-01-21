initialization
createDefaultEntities	
	self addEntity: (GameEntity new: 'malelight') at: 0@0.
	self addEntity: (GameEntity new: 'skeleton') at: self getFreeTile.
	self addEntity: (GameEntity new: 'magician') at: self getFreeTile.
	self addEntity: (GameEntity new: 'zombie') at: self getFreeTile.	
	^ self