drawing
paintTile: tilepos at: aCanvas pos: pos
	| floor isoPoint position adjustCentre |
 	floor := map at: (tilepos x @ tilepos y).
 	isoPoint := self toISO: pos x @ pos y.
 	adjustCentre := self toISO: (self width / 2) @ 0.
 	position :=  adjustCentre + ((isoPoint x * tileSize ) @ (isoPoint y * tileSize )).
	"Transcript show: 'drawing tile ',tilepos asString,' at ',position asString,' isoPoint = ',isoPoint asString,' adjustCentre =  ',adjustCentre asString,' tileSize ',tileSize asString ;cr."
 	floor position: position.
 	floor drawOn: aCanvas 