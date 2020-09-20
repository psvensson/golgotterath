action
handlePostMoveFor: entity
	entity boardAndOldPosition: entity animatedSprite target.
	entity player
		ifFalse: [ ^ self ].
	self worldCoords: entity boardPosition.
	boardDrawOffset := 0 @ 0