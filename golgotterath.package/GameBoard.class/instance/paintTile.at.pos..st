drawing
paintTile: tilepos at: aCanvas pos: pos
 	| floor isoPoint position adjustCentre |
 	floor := map at: tilepos x asString , '_' , tilepos y asString.
 	isoPoint := self toISO: pos x @ pos y.
 	adjustCentre := self toISO: (self width / 2) @ 0.
 	position := self position + adjustCentre + ((isoPoint x * tileSize) @ (isoPoint y * tileSize)).
 	floor position: position.
 	floor drawOn: aCanvas 