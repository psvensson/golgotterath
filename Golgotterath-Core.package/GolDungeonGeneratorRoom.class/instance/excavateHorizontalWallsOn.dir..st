accessing
excavateHorizontalWallsOn: generator dir: dir
	| hdir |
	hdir := 1.
	dir = #down
		ifTrue: [ hdir := -1 ].
	generator
		iterateAreaX: area
		direction: dir
		do: [ :px | 
			self excavateWall: generator pos: px @ self pos y.
			self
				excavateWall: generator
				pos: px @ (self pos y + (self h * hdir)) ]