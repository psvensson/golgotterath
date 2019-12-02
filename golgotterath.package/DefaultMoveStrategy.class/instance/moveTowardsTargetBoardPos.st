accessing
moveTowardsTargetBoardPos
	| path dir pos gameboard |	
	gameboard := entity gamemap gameboard .
	path := self getPathToTarget .
	pos := path first .
	dir := entity getDirectionFromPosition: pos.
	path size = 0 ifFalse: [ gameboard moveEntity: entity dir: dir ]