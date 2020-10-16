action
handlePostMoveFor: entity
	entity player
		ifFalse: [ entity visiblePosition: entity boardPosition.
			^ self ].
	player isMoving: false.
	Transcript
		show: 'handlePostMove before setting gameboardFocus = ' , gameboardFocus asString;
		cr.
	gameboardFocus := player boardPosition.
	"player visiblePosition: player boardPosition."
	Transcript
		show: 'handlePostMove after setting gameboardFocus = ' , gameboardFocus asString;
		cr.
	boardDrawOffset := 0 @ 0