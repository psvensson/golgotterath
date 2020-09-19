stepping and presenter
step
	| stop |
	stop := true.
	self render.
	runningAnimations
		ifNotNil: [ runningAnimations isEmpty
				ifFalse: [ runningAnimations := self stepAndSelectRunningAnimations.
					stop := false.
					self stepWorld ] ].
	events
		ifNotNil: [ events isEmpty
				ifFalse: [ events := self stepAndSelectRunningEvents.
					stop := false ] ].
	effects
		ifNotNil: [ effects isEmpty
				ifFalse: [effects := self stepAndSelectRunningEffects.
					Transcript show:'effects is now size ',effects size asString;cr.
					stop := false ] ].		
	stop
		ifTrue: [ worldAnimationFrame := 0.
			self stopStepping ].
	^ self