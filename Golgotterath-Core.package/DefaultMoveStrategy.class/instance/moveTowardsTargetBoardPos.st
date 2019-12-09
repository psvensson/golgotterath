find-select
moveTowardsTargetBoardPos
	| path dir pos gameboard |
	gameboard := entity gamemap gameboard.
	path := self getPathToTarget.
	path size = 0
		ifTrue: [ 
			Logger log:'-- no path from entity at ';log: entity boardPosition ;
			log:'to target ';log:targetBoardPos ;log:' --';cr. 			
			^ self ].
	pos := path last.
	pos isNotNil
		ifFalse: [ ^ self ].
	dir := entity getDirectionFromPosition: pos.
	gameboard moveEntity: entity dir: dir