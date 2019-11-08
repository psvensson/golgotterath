drawing
paintAnimation: entity tilepos:tilepos at: aCanvas pos: pos
	| isoPoint position adjustCentre animation |
 	isoPoint := self toISO: pos x @ pos y.
 	adjustCentre := self toISO: (self width / 2) @ 0.
 	position :=  adjustCentre + ((isoPoint x * self tileSize ) @ (isoPoint y * self tileSize )).
	"Transcript show: 'drawing tile ',tilepos asString,' at ',position asString,' isoPoint = ',isoPoint asString,' adjustCentre =  ',adjustCentre asString,' tileSize ',tileSize asString ;cr."
	animation := entity getOldAnimation .
 	entity position: position.
	"sprite resize: self tileSize @ self tileSize ."
 	animation currentFrame drawOn: aCanvas 