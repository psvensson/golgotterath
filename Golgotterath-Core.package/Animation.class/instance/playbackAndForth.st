stepping and presenter
playbackAndForth

	(frame + playDirection > frames size or: [ frame + playDirection < 1 ]) 
		ifTrue: [ 
			playDirection := playDirection negated.
			^ true ].
	frame := frame + playDirection.
	^ true