accessing
getWall: pos then: aBlock
	| wall |
	wall := gamemap mapAt: pos.
	(gamemap isWalkable: wall)
		ifTrue: [ aBlock value: nil ]
		ifFalse: [ aBlock value: wall ]