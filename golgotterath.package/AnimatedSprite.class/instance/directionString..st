accessing
directionString: dir
	dir = 'up' ifTrue: [ self direction: 4].
	dir = 'upleft' ifTrue: [ self direction: 3].
	dir = 'upright' ifTrue: [ self direction: 5].
	dir = 'down' ifTrue: [ self direction: 8].
	dir = 'downleft' ifTrue: [ self direction: 1].
	dir = 'downright' ifTrue: [ self direction: 7].
	dir = 'left' ifTrue: [ self direction: 2].
	dir = 'right' ifTrue: [ self direction: 6].	