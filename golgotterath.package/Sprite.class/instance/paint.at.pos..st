accessing
paint: gameboard at: aCanvas pos: pos
	| isoPoint position adjustCentre |
 	isoPoint := self toISO: pos x @ pos y.
 	adjustCentre := self toISO: (gameboard width / 2) @ 0.
 	position := adjustCentre + ((isoPoint x * self tileResize) @ (isoPoint y * self tileResize )).
	"Transcript show: 'drawing tile ',tilepos asString,' at ',position asString,' isoPoint = ',isoPoint asString,' adjustCentre =  ',adjustCentre asString,' tileSize ',self tileSize asString ;cr."
 	(self image) position: (position + gameboard position).
	(self image) resize: self tileSize @ self tileSize .
 	(self image) drawOn: aCanvas 
	