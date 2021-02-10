initialization
isBlocking: pos

	| tile |
	tile := gameMap mapAt: pos.
	tile isDoor
		ifTrue: [ ^ tile isOpenDoor not ]
		ifFalse: [ ^ tile isWall ]