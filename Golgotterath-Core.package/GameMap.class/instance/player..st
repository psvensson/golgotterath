accessing
player: anObject
	| actualrooms |
	player := anObject.
	actualrooms := dungeon rooms
		select: [ :r | (r area at: #type) = #room ].
	player
		boardPosition: (self getUnoccupiedTileForRoom: actualrooms first)