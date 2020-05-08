accessing
getFreeTileForRoom: room
	| tries tile pos |
	tries := 0.
	tile := nil.
	pos := room pos.
	[ tries < 10 and: tile isNil ]
		whileTrue: [ | x y |
			tries := tries + 1.
			x := pos x + (room w - 1) atRandom + 1.
			y := pos y + (room h - 1) atRandom + 1.
			(self isWalkable: (self mapAt: x @ y))
				ifTrue: [ self itemAt: x @ y ifAbsent: [ tile := x @ y ] ] ].
	^ tile