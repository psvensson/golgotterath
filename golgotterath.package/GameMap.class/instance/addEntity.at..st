adding
addEntity: entity at: boardpos
	"Transcript show: 'adding entity at ',pos asString;cr."
	entity boardpos: boardpos.
	entity gamemap: self.
	entities at: boardpos put: entity .
	"self addMorph: entity."