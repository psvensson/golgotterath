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
				ifAbsent: [ | floor |
					floor := self mapAt: fpos.
					"Transcript show:floor name,' is floor? ',(GolUtil isFloor: floor) asString;cr."
					(GolUtil isFloor: floor)
						ifTrue: [ tilepos := fpos ] ] ].
	^ tilepos