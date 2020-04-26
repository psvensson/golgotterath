initialization
createAreaForDoor: door Area: area direction: direction
	| pos h w x y dpos |
	pos := area at: #pos.
	h := area at: #h.
	w := area at: #w.
	dpos := door at: #pos.
	direction = 'up'
		ifTrue: [ x:= self class getRandomRange: dpos x offset: w. y:= dpos y - h ].
	direction = 'down'
		ifTrue: [ x:= self class getRandomRange: dpos x offset: w. y:= dpos y ].
	direction = 'right'
		ifTrue: [ x:= dpos x  . y:= self class getRandomRange: dpos y offset: h ].
	direction = 'left'
		ifTrue: [ x:= dpos x - w . y:= self class getRandomRange: dpos y offset: h ].
	Transcript show:'creating area direction ',direction,' from ',(x@y) asString,' to ',h asString,',',w asString;cr.	
	area
		at: #pos put: x@y;
		at: #w put: w;
		at: #h put: h