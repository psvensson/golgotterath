accessing
"protocol: #accessing"

step
	"Transcript show: 'entity ',(animatedSprite name),' stepCall = ',stepCalls asString;cr."
	stepCalls := stepCalls + 1.
	stepCalls > speed
		ifFalse: [ ^ self ].	
	strategies do: [ :strategy | 
			(strategy stepAndCheck)
				ifTrue: [ 
					stepCalls := 1.	
					^ self ] ].
	stepCalls := 1.			