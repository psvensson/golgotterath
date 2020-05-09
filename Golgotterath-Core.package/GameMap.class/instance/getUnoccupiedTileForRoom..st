accessing
getUnoccupiedTileForRoom: room
	| tries tile |
	tries := 0.
	tile := nil.
	[ tries < 100 and: tile isNil ]
		whileTrue: [ | fpos |
			tries := tries + 1.
			fpos := room floor at: room floor size atRandom.
			self entitiesAt: fpos ifAbsent: [ tile := fpos ] ].
	^ tile