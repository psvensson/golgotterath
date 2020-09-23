accessing
getFreeTileForRoom: room
	| tries tile |
	tries := 0.
	tile := nil.
	[ tries < 10 and: tile isNil ]
		whileTrue: [ | fpos |
			tries := tries + 1.
			fpos := room getRandomTile.
			(GolUtil isFloor: (self mapAt: fpos))
				ifTrue: [ self itemAt: fpos ifAbsent: [ tile := fpos ] ] ].
	^ tile