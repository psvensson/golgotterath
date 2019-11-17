accessing
directionString: dir
	dir = 'up' ifTrue: [ self direction: 4].
	dir = 'down' ifTrue: [ self direction: 8].
	dir = 'left' ifTrue: [ self direction: 2].
	dir = 'right' ifTrue: [ self direction: 6].	