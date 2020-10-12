animations
step
	| continue |
	continue := false.
	worldAnimationFrame > self animationFrames
		ifTrue: [ continue := false ].
	self stepAndSelectRunningAnimations
		ifTrue: [ continue := true ].
	self stepAndSelectRunningEvents
		ifTrue: [ continue := true ].
	self stepAndSelectRunningEffects
		ifTrue: [ continue := true ].
	self stepWorld.
	self render.
	worldAnimationFrame := worldAnimationFrame + 1.
	continue
		ifTrue: [ ^ self ].
	self stopStepping.
	worldAnimationFrame := 1