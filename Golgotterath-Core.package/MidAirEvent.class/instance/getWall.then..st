accessing
getWall: pos then: aBlock
	| wall |
	wall := gamemap mapAt: pos.
	(GolUtil isFloor: wall)
		ifTrue: [ aBlock value: nil ]
		ifFalse: [ aBlock value: wall ]