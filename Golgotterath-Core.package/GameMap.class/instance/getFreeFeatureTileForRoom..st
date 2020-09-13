accessing
getFreeFeatureTileForRoom: room
	| tries tile |
	tries := 0.
	tile := nil.
	[ tries < 100 and: tile isNil ]
		whileTrue: [ | fpos |
			tries := tries + 1.
			fpos := room floor at: room floor size atRandom.
			self
				entityAt: fpos
				ifAbsent: [ (self isWalkable: (self mapAt: fpos))
						ifTrue: [ tile := fpos ] ] ].
	^ tile