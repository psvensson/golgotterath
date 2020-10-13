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
	self stepWorld.
	self render.
	worldAnimationFrame := worldAnimationFrame + 1.
	"Transcript show:'--- step worldAnimationFram = ',worldAnimationFrame asString;cr."
	continue
		ifTrue: [ ^ self ].
	self stopStepping.
	worldAnimationFrame := 1