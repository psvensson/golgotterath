accessing
createRandomRoomAt: door depth: depth
	| direction area type |
	direction := door at: #direction.
	type := 4 atRandom.
	area := type = 1
		ifTrue: [ self generateAreaAt: door ]
		ifFalse: [ self generateCorridorAt: door ].
	self createAreaForDoor: door Area: area direction: direction.
	(self isAreaFree: area)
		ifFalse: [ Transcript
				show: 'Could not fit :(';
				cr.
			"TODO: remove doors which does not lead anywhere"
			^ self ].
	^ self createRoomAt: area depth: depth