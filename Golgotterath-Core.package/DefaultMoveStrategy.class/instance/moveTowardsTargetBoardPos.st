find-select
moveTowardsTargetBoardPos
	| dir pos gameboard |
	gameboard := entity gamemap gameboard.
	self getPathToTarget: [ :path | 
		path isEmpty ifTrue: [ ^ self ].		
		pos := path last.
		pos ifNil: [ ^ self ].
		dir := entity getDirectionFromPosition: pos.
		"Logger log:'moveTowardTargetBoardPos calling move to: ';log:dir;cr."
		gameboard moveEntity: entity dir: dir ]