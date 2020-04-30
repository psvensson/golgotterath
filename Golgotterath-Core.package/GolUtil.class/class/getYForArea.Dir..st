accessing
getYForArea: area Dir: dir
	| y h |
	y := (area at: #pos) y.
	h := area at: #h.
	(dir = 'down' ) ifTrue: [ y := y - h].
	^ y