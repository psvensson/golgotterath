adding
moveEntity: entity to: newBoardpos
	entities removeKey: entity boardPosition .
	entity boardPosition: newBoardpos.	
	entities at: newBoardpos put: entity .