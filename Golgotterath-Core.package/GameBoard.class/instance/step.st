stepping and presenter
step
	| stop |
	stop := worldAnimationFrame > self animationFrames.
	worldAnimationFrame := worldAnimationFrame + 1.
	self render.
	runningAnimations
		ifNotNil: [ runningAnimations isEmpty
				ifFalse: [ worldAnimationFrame \\ 4 = 0
						ifTrue: [ runningAnimations := self stepAndSelectRunningAnimations.
							stop := false.
							 ] ] ].
	events
		ifNotNil: [ events isEmpty
				ifFalse: [ events := self stepAndSelectRunningEvents.
					stop := false ] ].
	effects
		ifNotNil: [ effects isEmpty
				ifFalse: [ effects := self stepAndSelectRunningEffects.
					stop := false ] ].
	self stepWorld.		
	stop
		ifTrue: [ worldAnimationFrame := 0.
			self stopStepping ].
	^ self