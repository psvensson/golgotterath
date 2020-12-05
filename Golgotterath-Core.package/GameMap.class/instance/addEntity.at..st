adding
addEntity: entity at: boardpos
	entity
		boardPosition: boardpos;
		visiblePosition: boardpos;
		gamemap: self.
	Transcript show:'adding entity ',entity name,' at ',boardpos asString;cr.	
	entities at: boardpos put: entity.
	(entitiesArray includes: entity)
		ifFalse: [ entitiesArray add: entity ]