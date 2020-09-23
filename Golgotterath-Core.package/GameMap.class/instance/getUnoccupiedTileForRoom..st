accessing
getUnoccupiedTileForRoom: room
	| tries tilepos |
	tries := 0.
	[ tries < 100 and: tilepos isNil ]
		whileTrue: [ | fpos |
			tries := tries + 1.
			fpos := room getRandomTile.
			self
				entityAt: fpos
				ifAbsent: [ (GolUtil isFloor: (self mapAt: fpos))
						ifTrue: [ tilepos := fpos ] ] ].
	^ tilepos