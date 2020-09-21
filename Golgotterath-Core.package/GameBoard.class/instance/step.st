stepping and presenter
step
	| stop |
	stop := true.
	worldAnimationFrame > self animationFrames
		ifTrue: [ worldAnimationFrame := 0 ].
	runningAnimations
		ifNotNil: [ runningAnimations isEmpty
				ifFalse: [ stop := false.
					worldAnimationFrame \\ 4 = 0
						ifTrue: [ runningAnimations := self stepAndSelectRunningAnimations ] ] ].
	events
		ifNotNil: [ events isEmpty
				ifFalse: [ events := self stepAndSelectRunningEvents.
					stop := false ] ].
	effects
		ifNotNil: [ effects isEmpty
				ifFalse: [ effects := self stepAndSelectRunningEffects.
					stop := false ] ].
	self stepWorld.
	self render.
	stop
		ifTrue: [ self stopStepping ].
	worldAnimationFrame := worldAnimationFrame + 1