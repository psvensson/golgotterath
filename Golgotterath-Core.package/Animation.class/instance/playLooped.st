stepping and presenter
playLooped

	frame := frame + 1.
	frame > frames size ifFalse: [ frame := 1 ].

	^ true