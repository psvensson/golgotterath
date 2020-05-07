accessing
growRoom: room
	| doors |
	doors := self getUncheckedDoors: room doors.
	doors
		do: [ :door | 
			| r |
			r := self createRandomRoomAt: door depth: 1.
			Transcript
				show: 'growRoom create new room: ' , r asString;
				cr ]