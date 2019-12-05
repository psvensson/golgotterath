accesing
calculatePositionFromGameboard: gameboard
	| adjustCentre gw boardOffset wc dx dy |
	gw := gameboard width / 2.
 	adjustCentre := self toISO: gw@0.
 	
	wc := gameboard worldCoords .
	dx := (wc x - boardPosition x) * 64. 
	dy := (wc y - boardPosition y) * 64.
	
	boardOffset := gameboard boardDrawOffset - (self toISO:(dx@dy)).
	^ boardOffset + adjustCentre 