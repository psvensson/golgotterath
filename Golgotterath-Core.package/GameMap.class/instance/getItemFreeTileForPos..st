accessing
getItemFreeTileForPos: pos
	| tries tile r|
	r := 0.
	tries := 0.
	tile := nil.
	 [ tries < 100 and: tile isNil ]
				whileTrue: [ | fpos |
					tries := tries + 1.
					tries \\ 8 = 0 ifTrue: [ r := r + 1].
					fpos := self getRandomTileAround: pos radius: r.
					self
						itemAt: fpos
						ifAbsent: [  tile := fpos ] ] .
	^ tile