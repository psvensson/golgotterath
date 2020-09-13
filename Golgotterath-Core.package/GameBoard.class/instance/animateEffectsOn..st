accessing
animateEffectsOn: aCanvas
	| effectsToRemove |
	effects isEmpty
		ifFalse: [ effectsToRemove := OrderedCollection new.
			effects
				do: [ :effect | 
					(effect animateAndCheckIfDone: aCanvas)
						ifTrue: [ effectsToRemove add: effect ] ].
			effectsToRemove do: [ :each | effects remove: each ].
			self changed ] ifTrue: [ steppingTime := 90 ]