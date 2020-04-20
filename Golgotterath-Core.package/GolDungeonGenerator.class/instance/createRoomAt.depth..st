accessing
createRoomAt: area depth: depth
	| room |
	room := GolDungeonGeneratorRoom
		withPos: (area at: #pos)
		h: (area at: #h)
		w: (area at: #w).
	room depth: depth.
	rooms add: room.
	self excavate: area