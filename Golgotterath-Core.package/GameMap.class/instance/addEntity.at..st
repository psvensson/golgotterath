adding
addEntity: entity at: boardpos
	entity boardPosition: boardpos.
	entity gamemap: self.
	entities at: boardpos put: entity .
	(entitiesArray includes: entity) ifFalse: [ 
		 entitiesArray add: entity] .