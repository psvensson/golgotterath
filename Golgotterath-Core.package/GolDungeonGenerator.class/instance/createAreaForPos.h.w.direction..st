initialization
createAreaForPos: pos h: h w: w direction: direction
	| area |
	area := Dictionary new.
	direction = 'up'
		ifTrue: [ pos setX: pos x + w atRandom setY: pos y - h ].
	direction = 'down'
		ifTrue: [ pos setX: pos x + w atRandom setY: pos y ].
	direction = 'right'
		ifTrue: [ pos setX: pos x + w setY: pos y + h atRandom ].
	direction = 'left'
		ifTrue: [ pos setX: pos x setY: pos y + h atRandom ].
	area
		at: #pos put: pos;
		at: #w put: w;
		at: #h put: h.
	^ area