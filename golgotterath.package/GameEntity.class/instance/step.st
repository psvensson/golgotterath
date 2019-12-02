accessing
"protocol: #accessing"

step
	"Transcript show: 'entity ',(animatedSprite name),' stepCall = ',stepCalls asString;cr."
	stepCalls := stepCalls + 1.
	stepCalls > speed
		ifFalse: [ ^ self ].	
	Transcript show: '...running strategies...';cr.
	strategies do: [ :strategy | 
			(strategy stepAndCheck)
				ifTrue: [ 
					stepCalls := 0.	
					^ self ] ].
	stepCalls := 0.			