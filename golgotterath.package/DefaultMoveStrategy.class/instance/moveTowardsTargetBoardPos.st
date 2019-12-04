find-select
moveTowardsTargetBoardPos
	| path dir pos gameboard |
	gameboard := entity gamemap gameboard.
	Transcript show: 'move towardstargetpos getpath to target.';cr.
	path := self getPathToTarget.
	path size = 0
		ifTrue: [ ^ self ].
	pos := path first.
	pos isNotNil
		ifTrue: [ 
			Transcript show: 'move towardstargetpos getting dir..';cr.
			dir := entity getDirectionFromPosition: pos.
			gameboard moveEntity: entity dir: dir ]