accessing
animateEffectsOn: aCanvas
	| effectsToRemove |	
	effectsToRemove := OrderedCollection new.
	effects do: [ :effect | 
		(effect animateAndCheckIfDone: aCanvas) ifTrue: [ effectsToRemove add: effect ] ].
	effectsToRemove do: [ :each | effects remove: each ].
	self changed