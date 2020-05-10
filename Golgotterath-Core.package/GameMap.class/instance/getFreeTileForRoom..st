accessing
getFreeTileForRoom: room
	| tries tile pos |
	tries := 0.
	tile := nil.
	[ tries < 10 and: tile isNil ]
		whileTrue: [ | fpos |
			tries := tries + 1.
			fpos := room floor at: room floor size atRandom.
			(self isWalkable: (self mapAt: fpos))
				ifTrue: [ self itemAt: fpos ifAbsent: [ tile := fpos ] ] ].
	^ tile