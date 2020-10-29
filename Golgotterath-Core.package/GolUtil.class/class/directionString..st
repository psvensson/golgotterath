testing
directionString: dir

	dir = 'up' ifTrue: [ ^ 4 ].
	dir = 'upleft' ifTrue: [ ^ 3 ].
	dir = 'upright' ifTrue: [ ^ 5 ].
	dir = 'down' ifTrue: [ ^ 8 ].
	dir = 'downleft' ifTrue: [ ^ 1 ].
	dir = 'downright' ifTrue: [ ^ 7 ].
	dir = 'left' ifTrue: [ ^ 2 ].
	dir = 'right' ifTrue: [ ^ 6 ]