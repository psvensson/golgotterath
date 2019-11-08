drawing
paintEntity: entity tilepos:tilepos at: aCanvas pos: pos
	| isoPoint position adjustCentre |
 	isoPoint := self toISO: pos x @ pos y.
 	adjustCentre := self toISO: (self width / 2) @ 0.
 	position :=  adjustCentre + ((isoPoint x * self tileSize ) @ (isoPoint y * self tileSize )).
	"Transcript show: 'drawing tile ',tilepos asString,' at ',position asString,' isoPoint = ',isoPoint asString,' adjustCentre =  ',adjustCentre asString,' tileSize ',tileSize asString ;cr."
 	entity position: position.