accessing
excavateVerticalWallsOn: generator dir: dir
	| wdir |
	wdir := 1.
	dir = #left
		ifTrue: [ wdir := -1 ].
	generator
		iterateAreaY: area
		direction: dir
		do: [ :py | 
			self excavateWall: generator pos: self pos x @ py.
			self
				excavateWall: generator
				pos: (self pos x + (self w * wdir)) @ py ]