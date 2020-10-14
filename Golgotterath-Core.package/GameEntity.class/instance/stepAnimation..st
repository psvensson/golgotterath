accessing
stepAnimation: worldAnimationFrame
	| delta anim stepSize |
	anim := animatedSprite getOldAnimation.
	"Transcript
		show:
			'entity stepAnimation visible position is ' , visiblePosition asString
				, ' dir = ' , anim direction asString;
		cr."
	delta := GolUtil getDeltaForDirectionValue: animatedSprite direction.
	stepSize := 1 / anim frames size.
	isMoving
		ifTrue: [ visiblePosition := visiblePosition + (delta * stepSize) ].
	^ anim stepAnimation: worldAnimationFrame