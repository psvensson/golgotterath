accessing
player: anObject
	player := anObject.
	player boardPosition: (self getUnoccupiedTileForRoom:  dungeon rooms first).