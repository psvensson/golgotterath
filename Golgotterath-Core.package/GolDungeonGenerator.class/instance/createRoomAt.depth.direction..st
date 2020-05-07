accessing
createRoomAt: area depth: depth direction: d
	| room |
	room := GolDungeonGeneratorRoom
		withArea: area depth: depth level: 1.	
	room excavateOn: self direction: d.
	rooms add: room.	
	^ room