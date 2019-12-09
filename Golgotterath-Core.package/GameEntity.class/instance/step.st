accessing
step
	Logger
		log: 'entity ';log: animatedSprite name;log:' stepCall = ';log:stepCalls;
		cr.
	stepCalls := stepCalls + 1.
	stepCalls > speed
		ifFalse: [ ^ self ].
	strategies
		do: [ :strategy | 
			strategy stepAndCheck
				ifTrue: [ stepCalls := 1.
					^ self ] ].
	stepCalls := 1