adding
addEntity: entity at: boardpos
	entity
		boardPosition: boardpos;
		visiblePosition: boardpos;
		gamemap: self.
	entities at: boardpos put: entity.
	(entitiesArray includes: entity)
		ifFalse: [ entitiesArray add: entity ]