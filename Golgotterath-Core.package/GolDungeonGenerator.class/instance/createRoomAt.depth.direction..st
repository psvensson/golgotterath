accessing
createRoomAt: area depth: depth direction: d
	| room roomRect |
	room := GolDungeonGeneratorRoom
		withArea: area depth: depth level: 1.	
	room excavateOn: self direction: d.
	rooms add: room.	
	roomRect := Rect
		x: (area at: #pos) x
		y: (area at: #pos) y
		width: (area at: #w)
		height: (area at: #h).	
	quadTree insert: roomRect data: room.		
	^ room