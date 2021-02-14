stepping and presenter
playLooped

	frame := frame + 1.
	frame > frames size ifTrue: [ frame := 1 ].

	^ true