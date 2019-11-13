adding
moveEntity: entity dir: dir
	| x y possibleCollision cname|
	"Transcript show: 'adding tile ',pos asString;cr."
	x := entity boardx.
	y := entity boardy.
	dir = 'up' ifTrue: [ y := y - 1.  entity direction: 4].
	dir = 'down' ifTrue: [ y := y + 1 . entity direction: 8].
	dir = 'left' ifTrue: [ x := x - 1 . entity direction: 2].
	dir = 'right' ifTrue: [ x := x + 1 . entity direction: 6].		
	possibleCollision := gameMap mapAt: x@y.
	cname := possibleCollision name.
	(cname findString: 'floor') > 0 ifTrue: [ 
		entity targetx: x; targety: y.
		self addRunningAnimation: entity.
	].	
	entity play: 'walk'.
	
	