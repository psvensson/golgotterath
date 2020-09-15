stepping and presenter
step
	| stop |
	stop := true.
	runningAnimations
		ifNotNil: [ runningAnimations isEmpty
				ifFalse: [ runningAnimations := self stepAndSelectRunningAnimations.
					stop := false.
					self stepWorld ] ].
	events
		ifNotNil: [ events isEmpty
				ifFalse: [ events := self stepAndSelectRunningEvents.
					stop := false ] ].
	stop
		ifTrue: [ worldAnimationFrame := 0.
			self stopStepping ].
	^ self