accessing
getWall: pos gamemap: gamemap then: aBlock
	| wall |
	wall := gamemap mapAt: pos.
	(gamemap isWalkable: wall)
		ifTrue: [ aBlock value: nil ].
	aBlock value: wall