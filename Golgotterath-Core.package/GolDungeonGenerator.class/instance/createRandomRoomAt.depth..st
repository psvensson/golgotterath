accessing
createRandomRoomAt: door depth: depth
	| direction area type tries nomatch |
	direction := door at: #direction.
	type := 4 atRandom.
	tries := 6.
	nomatch := true.
	[ tries > 0 and: nomatch ]
		whileTrue: [ area := type = 1
				ifTrue: [ self generateAreaAt: door ]
				ifFalse: [ self generateCorridorAt: door ].
			self createAreaForDoor: door Area: area direction: direction.
			(self isAreaFree: area direction: direction )
				ifTrue: [ nomatch := false ]
				ifFalse: [ Transcript
						show: 'Could not fit :(';
						cr
					"TODO: remove doors which does not lead anywhere" ].
			tries := tries - 1 ].
	door at: #checked put: true.	
	nomatch
		ifTrue: [ ^ nil ].
	^ self createRoomAt: area depth: depth direction: direction