accessing
createRoomAt: area depth: depth
	| room |
	room := GolDungeonGeneratorRoom
		withPos: (area at: #pos)
		h: (area at: #h)
		w: (area at: #w).
	room depth: depth.
	self excavate: area.
	self createRandomDoorsForRoom: room.
	rooms add: room.	
	^ room