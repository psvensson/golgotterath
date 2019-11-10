adding
moveEntity: entity dir: dir
	| x y |
	"Transcript show: 'adding tile ',pos asString;cr."
	x := entity boardx.
	y := entity boardy.
	dir = 'up' ifTrue: [ y := y - 1 ].
	dir = 'down' ifTrue: [ y := y + 1 ].
	dir = 'left' ifTrue: [ x := x - 1 ].
	dir = 'right' ifTrue: [ x := x + 1 ].		
	entities removeKey: (entity boardx@entity boardy).
	entity boardx: x; boardy: y.
	entities at: x@y put: entity.
	self changed .