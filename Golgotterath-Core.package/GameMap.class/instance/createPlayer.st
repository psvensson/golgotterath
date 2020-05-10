initialization
createPlayer
	|  dagger room |
	player := GameEntity new: 'malelight'.
	room := dungeon rooms first.
	self addEntity: player at: (self getUnoccupiedTileForRoom: room).
	dagger := GameItem new: 'dagger'.
	player weapon: dagger