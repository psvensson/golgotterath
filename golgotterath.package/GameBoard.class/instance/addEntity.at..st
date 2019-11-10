adding
addEntity: entity at: pos
	"Transcript show: 'adding tile ',pos asString;cr."
	entities at: pos put: entity .
	"self addMorph: entity."