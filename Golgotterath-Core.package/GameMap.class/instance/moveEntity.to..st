adding
moveEntity: entity to: newBoardpos
	entities removeKey: entity boardPosition ifAbsent: [].
	entity boardPosition: newBoardpos.	
	entities at: newBoardpos put: entity .