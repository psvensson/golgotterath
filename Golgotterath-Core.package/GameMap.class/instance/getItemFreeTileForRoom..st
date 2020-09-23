accessing
getItemFreeTileForRoom: room
	| tries tile |
	tries := 0.
	tile := nil.
	room
		ifNotNil: [ [ tries < 100 and: tile isNil ]
				whileTrue: [ | fpos |
					tries := tries + 1.
					fpos := room getRandomTile.
					self
						itemAt: fpos
						ifAbsent: [  tile := fpos ] ] ].
	^ tile