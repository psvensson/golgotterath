action
handlePostMoveFor: entity
	entity boardAndOldPosition: entity animatedSprite target.
	entity player
		ifFalse: [ ^ self ].
	playerIsMoving := false.	
	self worldCoords: entity boardPosition.
	boardDrawOffset := 0 @ 0