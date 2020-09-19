accessing
attempToFindAreaAt: door direction: direction
	| tries type area |
	
	tries := 6.
	[ tries > 0 and: area isNil ]
		whileTrue: [ type := 3 atRandom.
			area := type = 1
				ifTrue: [ self generateAreaAt: door ]
				ifFalse: [ self generateCorridorAt: door ].
			self createAreaForDoor: door Area: area direction: direction.
			(self isAreaFree: area direction: direction)
				ifFalse: [ 
					"Transcript show:'attemptToFindArea setting are to nil since not free...';cr."
					area := nil ].
			tries := tries - 1 ].
	"Transcript show:'attemptToFindArea returns found area ',area asString;cr."
	^ area