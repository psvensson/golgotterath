accessing
open 
	rotated
		ifTrue: [ state := 3 ]
		ifFalse: [ state := 2 ].
		"Transcript show:'door open state is now ',state asString;cr."