accessing
getXForArea: area Dir: dir
	| x w |
	x := (area at: #pos) x.
	w := area at: #w.
	"dir = 'right' ifTrue: [ x := x - w]."
	(dir = 'left' ) ifTrue: [ x := x - w].
	^ x