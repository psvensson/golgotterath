action
handlePostMoveFor: entityToRemove
	entityToRemove player
		ifFalse: [ ^ self ].
	self worldCoords: entityToRemove boardPosition.
	boardDrawOffset := 0 @ 0