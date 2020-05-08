accessing
getUnoccupiedTileForRoom: room
	| tries tile |
	tries := 0.
	tile := nil.
	[ tries < 100 and: tile isNil ]
		whileTrue: [ | x y |
			tries := tries + 1.
			x := room pos x + (room w - 1) atRandom + 1.
			y := room pos y + (room h - 1) atRandom + 1.
			self entitiesAt: x @ y ifAbsent: [ tile := x @ y ] ].
	^ tile