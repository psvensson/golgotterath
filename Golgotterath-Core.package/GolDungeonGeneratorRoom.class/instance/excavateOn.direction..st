accessing
excavateOn: generator direction: dir
	| hdir wdir |
	Transcript show:'.. excavateOn ',self pos asString;cr.
	dir = #up
		ifTrue: [ hdir := 1.
			wdir := 1 ].
	dir = #right
		ifTrue: [ hdir := 1.
			wdir := 1 ].
	dir = #down
		ifTrue: [ hdir := -1.
			wdir := 1 ].
	dir = #left
		ifTrue: [ hdir := 1.
			wdir := -1 ].
	generator
		iterateAreaX: area
		direction: dir
		do: [ :px | 
			self excavateWall: generator pos: px @ self pos y.
			self excavateWall: generator pos: px @ (self pos y + (self h * hdir)) ].
	generator
		iterateAreaY: area
		direction: dir
		do: [ :py | 
			self excavateWall: generator pos: self pos x @ py.
			self excavateWall: generator pos: (self pos x + (self w * wdir)) @ py ].
	generator
		iterateArea: area
		direction: dir
		edge: 1
		do: [ :ix :iy | generator mapAt: ix @ iy put: 1 ].
	self createRandomDoorsOn: generator Direction: dir.
	doors do: [ :door | generator mapAt: (door at: #pos) put: 2 ].
	self generateEntities .
	self generateTreasures 