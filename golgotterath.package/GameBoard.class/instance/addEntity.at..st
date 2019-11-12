adding
addEntity: entity at: pos
	"Transcript show: 'adding tile ',pos asString;cr."
	entity boardx: pos x; boardy: pos y.
	entity targetx: pos x; targety: pos y.
	entities at: pos put: entity .
	"self addMorph: entity."