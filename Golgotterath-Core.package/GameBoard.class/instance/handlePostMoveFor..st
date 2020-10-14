action
handlePostMoveFor: entity
	entity visiblePosition: entity boardPosition.
	entity player
		ifFalse: [ ^ self ].
	player isMoving: false.
	"visiblePosition began as last boardPosition, was continually animated twoards boardPosition, and is now set to it as animation is deemed to be over"
	entity visiblePosition: entity boardPosition.
	boardDrawOffset := 0@0.
	gameboardFocus := entity boardPosition .