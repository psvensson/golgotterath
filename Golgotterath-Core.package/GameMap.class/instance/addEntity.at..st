adding
addEntity: entity at: boardpos
	"Transcript show: 'adding entity at ',pos asString;cr."
	entity boardPosition: boardpos.
	entity gamemap: self.
	entities at: boardpos put: entity .
	entitiesArray := entities asArray .
	"self addMorph: entity."