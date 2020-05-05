accessing
close
	rotated
		ifTrue: [ state := 4 ]
		ifFalse: [ state := 1 ].
		"Transcript show:'door close state is now ',state asString;cr."