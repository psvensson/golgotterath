accessing
excavateOn: generator
	| area |
	area := Dictionary new.
	area
		at: #pos put: pos;
		at: #h put: h;
		at: #w put: w.
	pos x to: pos x + w do: [ :px | 
		self excavateWall: generator pos: px @ pos y.
		self excavateWall: generator pos:  px @ (pos y + h) ].
	pos y to: pos y + h do: [ :py | 
		self excavateWall: generator pos:  pos x @ py .
		self excavateWall: generator pos:  (pos x + w) @ py  ].
	generator
		iterateArea: area edge: 1
		do: [ :ix :iy | generator mapAt: ix @ iy put: 1 ].
	doors do: [ :door | generator mapAt: (door at: #pos) put: 2 ]