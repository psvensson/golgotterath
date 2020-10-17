action
handlePostMoveFor: entity
	entity player
		ifFalse: [ entity visiblePosition: entity boardPosition.
			^ self ].
	player isMoving: false.
	
	gameboardFocus := player boardPosition.
	"player visiblePosition: player boardPosition."
	
	boardDrawOffset := 0 @ 0