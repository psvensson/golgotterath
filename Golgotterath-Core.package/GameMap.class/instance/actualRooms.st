accessing
actualRooms
	^ dungeon rooms select: [ :r | (r area at: #type) = #room ]