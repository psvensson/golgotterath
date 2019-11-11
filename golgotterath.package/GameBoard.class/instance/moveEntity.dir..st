adding
moveEntity: entity dir: dir
	| x y |
	"Transcript show: 'adding tile ',pos asString;cr."
	x := entity boardx.
	y := entity boardy.
	dir = 'up' ifTrue: [ y := y - 1.  entity direction: 4].
	dir = 'down' ifTrue: [ y := y + 1 . entity direction: 8].
	dir = 'left' ifTrue: [ x := x - 1 . entity direction: 1].
	dir = 'right' ifTrue: [ x := x + 1 . entity direction: 5].		
	entities removeKey: (entity boardx@entity boardy).
	entity boardx: x; boardy: y.
	entities at: x@y put: entity.
	entity play: 'walk'.
	self addRunningAnimation: entity.
	self changed .