stepping and presenter
step
	runningAnimations
		ifNotNil: [ runningAnimations isEmpty
				ifFalse: [ runningAnimations := self stepAndSelectRunningAnimations.
					self stepWorld.
					runningAnimations
						ifEmpty: [ worldAnimationFrame := 0.
							self stopStepping ] ] ].
	^ self