adding
moveEntity: entity dir: dir
	| x y |
	"Transcript show: 'adding tile ',pos asString;cr."
	x := entity boardx.
	y := entity boardy.
	dir = 'up' ifTrue: [ y := y - 1.  entity direction: 4].
	dir = 'down' ifTrue: [ y := y + 1 . entity direction: 8].
	dir = 'left' ifTrue: [ x := x - 1 . entity direction: 2].
	dir = 'right' ifTrue: [ x := x + 1 . entity direction: 6].		
	
	entity targetx: x; targety: y.
	"entities at: (entity targetx@entity targety) put: entity ."
	"Transcript show: 'entity moved to ',x asString,',',y asString;cr."
	
	entity play: 'walk'.
	self addRunningAnimation: entity.
	