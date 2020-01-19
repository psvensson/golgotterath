find-select
moveTowardsTargetBoardPos
	| dir pos gameboard |
	gameboard := entity gamemap gameboard.
	self getPathToTarget: [ :path | 
		path isEmpty ifTrue: [ ^ self ].
		pos := path last.
		pos isNotNil ifFalse: [ ^ self ].
		dir := entity getDirectionFromPosition: pos.
		gameboard moveEntity: entity dir: dir ]