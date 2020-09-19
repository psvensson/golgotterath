accessing
calculatePositionFromGameboard: gameboard
	| adjustCentre gw boardOffset rv |
	gw := gameboard width / 2.
	adjustCentre := GolUtil toISO: gw @ 0.
	boardOffset := gameboard boardDrawOffset - (self
		getDeltaFromGameboard: gameboard).
	rv := boardOffset + adjustCentre.
	rv := rv x asInteger @ rv y asInteger.
	^ rv