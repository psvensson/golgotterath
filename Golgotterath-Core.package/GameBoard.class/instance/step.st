animations
step
	| continue |
	continue := false.
	worldAnimationFrame < self animationFrames
		ifTrue: [ continue := true ].
	self stepAndSelectRunningAnimations
		ifTrue: [ continue := true ].
	self stepAndSelectRunningEvents
		ifTrue: [ continue := true ].
	self stepAndSelectRunningEffects
		ifTrue: [ continue := true ].
	player isMoving
		ifTrue: [ self stepWorld ].
	self render.
	self changed.
	worldAnimationFrame := worldAnimationFrame + 1.
	"Transcript show:'--- step worldAnimationFram = ',worldAnimationFrame asString;cr."
	continue
		ifTrue: [ ^ self ].
	self stopStepping.
	worldAnimationFrame := 1