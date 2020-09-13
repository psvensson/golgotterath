initialization
digAt: pos depth: depth
	| alldoors doors door room |
	doors := OrderedCollection new.
	alldoors := OrderedCollection new.
	door := Dictionary new.
	door
		at: #pos put: pos;
		at: #checked put: false;
		at: #direction put: #down.
	room := self createRandomRoomAt: door depth: 1.
	
	doors addAll: room doors.
	[ currentDepth = depth ]
		whileFalse: [ | d r |
			doors
				ifNotEmpty: [ d := doors removeFirst.
					r := self createRandomRoomAt: d depth: currentDepth.
					r
						ifNotNil: [ doors addAll: r doors.
							alldoors addAll: r doors ] ].
			currentDepth := currentDepth + 1 ].
	self getUncheckedDoors: alldoors