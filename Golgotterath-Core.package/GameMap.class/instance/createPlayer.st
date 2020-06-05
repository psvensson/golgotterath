initialization
createPlayer
	|  dagger actualrooms room |
	player := GameEntity new: 'malelight'.
	actualrooms := dungeon rooms
		select: [ :r | (r area at: #type) = #room ].
	room := actualrooms first.
	self addEntity: player at: (self getUnoccupiedTileForRoom: room).
	dagger := GameItem new: 'dagger'.
	player inventory add: (GameItem new: 'invisibility_potion').
	player weapon: dagger.
	^ player