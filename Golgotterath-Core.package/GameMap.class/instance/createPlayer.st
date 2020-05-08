initialization
createPlayer
	| player dagger |
	player := GameEntity new: 'malelight'.
	self addEntity: player at: 0 @ 0.
	dagger := GameItem new: 'dagger'.
	player weapon: dagger