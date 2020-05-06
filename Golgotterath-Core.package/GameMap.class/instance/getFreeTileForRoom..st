accessing
getFreeTileForRoom: room
	| tries tile |
	tries := 0.
	tile := nil.
	[ tries < 100 and: tile isNil ]
		whileTrue: [ | x y |
			tries := tries + 1.
			x := room w - 1 atRandom + 1.
			y := room h - 1 atRandom + 1.
			(self isWalkable: (self mapAt: x @ y))
				ifTrue: [ self itemAt: x @ y ifAbsent: [ tile := x @ y ] ] ].
	^ tile