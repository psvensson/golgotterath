find-select
moveTowardsTargetBoardPos
	| dir pos gameboard |
	gameboard := entity gamemap gameboard.
	self getPathToTarget: [ :path | 
		path isEmpty ifTrue: [  
			Logger
				log: '-- no path from entity at ';
				log: entity boardPosition;
				log: ' to target ';
				log: targetBoardPos;
				log: ' --';
				cr.
			^ self ].
		pos := path last.
		pos isNotNil ifFalse: [ ^ self ].
		dir := entity getDirectionFromPosition: pos.
		gameboard moveEntity: entity dir: dir ]