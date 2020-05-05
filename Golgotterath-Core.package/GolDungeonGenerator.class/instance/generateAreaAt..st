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
		at: #w put: w;
		at: #h put: h.
	"Transcript show:'++ ++ generateArea from ',pos asString,' h ',h asString,', w ',w asString;cr."
	^ area