accessing
hasNeighbor: p direction: dir generator: generator
	| x y |
	x := p x.
	y := p y.
	(dir = 'up' or: dir = 'down')
		ifTrue: [ ((generator mapAt: (x - 1) @ y) = 1)
				or: ((generator mapAt: (x + 1) @ y) = 1) ].
	(dir = 'left' or: dir = 'right')
		ifTrue: [ ((generator mapAt: x @ (y - 1)) = 1)
				or: ((generator mapAt: x @ (y + 1)) = 1) ]