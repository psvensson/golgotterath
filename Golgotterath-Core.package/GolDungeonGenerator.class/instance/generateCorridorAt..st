initialization
generateCorridorAt: door
	| area partial h w pos vertical |
	vertical := 2 atRandom.
	partial := MAX_CORRIDOR_SIZE - MIN_CORRIDOR_SIZE.
	vertical = 1
		ifTrue: [ h := partial atRandom + MIN_CORRIDOR_SIZE.
			w := 2 atRandom + 1]
		ifFalse: [ h := 2 atRandom + 1.
			w := partial atRandom + MIN_CORRIDOR_SIZE ].
	pos := door at: #pos.
	area := Dictionary new.
	area
		at: #pos put: pos;
		at: #type put: #corridor;
		at: #w put: w;
		at: #h put: h.
	"Transcript show:'++ ++ Corridor from ',pos asString,' h ',h asString,', w ',w asString;cr.	"
	^ area