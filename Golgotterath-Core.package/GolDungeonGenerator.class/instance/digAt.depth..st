initialization
digAt: pos depth: depth
	| alldoors doors door |
	doors := OrderedCollection new.
	alldoors := OrderedCollection new.
	door := Dictionary new.
	door
		at: #pos put: pos;
		at: #checked put: false;
		at: #direction put: #down.
	doors add: door.
	[ currentDepth = depth ]
		whileFalse: [ | d room |
			doors
				ifNotEmpty: [ d := doors removeFirst.
					room := self createRandomRoomAt: d depth: currentDepth.
					room
						ifNotNil: [ doors addAll: room doors.
							alldoors addAll: room doors ] ].
			currentDepth := currentDepth + 1 ].
	self getUncheckedDoors: alldoors