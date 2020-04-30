accessing
createRoomAt: area depth: depth direction: d
	| room |
	room := GolDungeonGeneratorRoom
		withPos: (area at: #pos)
		h: (area at: #h)
		w: (area at: #w).
	room depth: depth.		
	room excavateOn: self direction: d.
	rooms add: room.	
	^ room