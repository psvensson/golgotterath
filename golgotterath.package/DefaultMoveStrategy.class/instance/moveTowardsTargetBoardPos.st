find-select
moveTowardsTargetBoardPos
	| path dir pos gameboard |
	gameboard := entity gamemap gameboard.
	path := self getPathToTarget.
	path size = 0
		ifTrue: [ ^ self ].
	pos := path last.
	pos isNotNil
		ifTrue: [ 			
			dir := entity getDirectionFromPosition: pos.
			Transcript show: 'move towardstargetpos moving ',entity name,' ',dir;cr.
			gameboard moveEntity: entity dir: dir ]