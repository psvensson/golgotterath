initialization
createRandomDoorsForRoom: room
	| interval doors |
	interval := MAX_DOORS - MIN_DOORS.
	doors := interval atRandom + MIN_DOORS.
	Transcript show:'generating ',doors asString,' random doors for room';cr.
	doors
		timesRepeat: [ | door |
			door := self createRandomDoorForRoom: room.
			room doors add: door.
			self mapAt: (door at: #pos) put: 2 ]