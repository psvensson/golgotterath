accessing
growRoom: room
	| doors rs |
	rs := OrderedCollection new.
	doors := self getUncheckedDoors: room doors.
	doors
		do: [ :door | 
			| r |
			r := self createRandomRoomAt: door depth: 1.
			r ifNotNil: [ rs add: r ].
			 ].
	^ rs