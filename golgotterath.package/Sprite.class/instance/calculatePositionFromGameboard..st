accesing
calculatePositionFromGameboard: gameboard
	| isoPoint position adjustCentre gw boardOffset|
	isoPoint := self toISO: boardpos.
	gw := gameboard width / 2.
 	adjustCentre := self toISO: gw@0.
 	position := adjustCentre + 
		((isoPoint x * self tileResize) @ (isoPoint y * self tileResize )).
	boardOffset := gameboard boardDrawOffset.	
	^ position + boardOffset 