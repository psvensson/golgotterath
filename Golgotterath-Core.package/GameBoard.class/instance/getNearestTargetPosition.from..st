action
getNearestTargetPosition: dir from: pos
	| entity |
	entity := self getNextEntityInDirection: dir from: pos.
	entity ifNotNil: [ ^ entity boardPosition ].
	^ (self getNextWallInDirection: dir from: pos) boardPosition