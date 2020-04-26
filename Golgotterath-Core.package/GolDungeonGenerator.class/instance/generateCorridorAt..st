initialization
generateCorridorAt: door
	| area partial h w pos vertical |
	vertical := 2 atRandom.
	partial := MAX_SIZE - MIN_SIZE.
	vertical = 1
		ifTrue: [ h := partial atRandom + MIN_SIZE.
			w := 2 ]
		ifFalse: [ h := 2.
			w := partial atRandom + MIN_SIZE ].
	pos := door at: #pos.
	area := Dictionary new.
	area
		at: #pos put: pos;
		at: #w put: w;
		at: #h put: h.
	^ area