accessing
excavateOn: generator direction: dir
	| type |
	type := ((area at: #type) = #corridor) ifTrue: [ 1 ] ifFalse: [2]. 
	"Transcript show:'.. excavateOn ',self pos asString;cr."
	self excavateHorizontalWallsOn: generator dir: dir.
	self excavateVerticalWallsOn: generator dir: dir.
	generator
		iterateArea: area
		direction: dir
		edge: 1
		do: [ :ix :iy | generator mapAt: ix @ iy put: 1 ].
	self createRandomDoorsOn: generator Direction: dir.
	doors do: [ :door | generator mapAt: (door at: #pos) put: type ].
	self generateEntities .
	self generateTreasures .