initialization
generateAreaAt: door
	| area partial h w pos |
	partial := MAX_SIZE - MIN_SIZE.
	h := partial atRandom + MIN_SIZE.
	w := partial atRandom + MIN_SIZE.
	pos := door at: #pos.
	area := Dictionary new.
	area
		at: #pos put: pos;
		at: #type put: #room;
		at: #w put: w;
		at: #h put: h.
	^ area