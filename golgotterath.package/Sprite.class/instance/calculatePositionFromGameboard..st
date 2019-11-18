accesing
calculatePositionFromGameboard: gameboard
	| isoPoint adjustCentre gw boardOffset wc dx dy |
	isoPoint := self toISO: boardpos.
	gw := gameboard width / 2.
 	adjustCentre := self toISO: gw@0.
 	
	wc := gameboard worldCoords .
	dx := (wc x - boardpos x) * self tileResize.
	dy := (wc y - boardpos y) * self tileResize.
	
	boardOffset := gameboard boardDrawOffset - (self toISO:(dx@dy)).
	^ boardOffset + adjustCentre 