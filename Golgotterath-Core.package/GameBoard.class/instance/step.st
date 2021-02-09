stepping and presenter
step

	| continue |
	player isMoving ifTrue: [ self stepWorld ].
	continue := false.
	paintMarkers > 0 ifTrue: [ continue := true ].
	worldAnimationFrame < self animationFrames ifTrue: [ 
		continue := true ].
	self stepAndSelectRunningAnimations ifTrue: [ continue := true ].
	self stepAndSelectRunningEvents ifTrue: [ continue := true ].
	self stepAndSelectRunningEffects ifTrue: [ continue := true ].
	self render.
	self layoutChanged.
	worldAnimationFrame := worldAnimationFrame + 1.
	continue ifTrue: [ ^ self ].
	self stopStepping.
	stepTime := 45.
	worldAnimationFrame := 1