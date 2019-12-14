accessing
step
	Logger
		log: 'entity ';log: animatedSprite name;log:' stepCall = ';
		log:stepCalls;log:' speed = ';log:speed;cr.
	stepCalls := stepCalls + 1.
	stepCalls = speed
		ifFalse: [ ^ self ].
	strategies
		do: [ :strategy | 
			stepCalls := 0.
			strategy stepAndCheck
				ifTrue: [ 
					^ self ] ].
	