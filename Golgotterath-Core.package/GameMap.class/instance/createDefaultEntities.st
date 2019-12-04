accessing
createDefaultEntities
	| player1 player2 player3 |
	
	player1 := GameEntity new: 'malelight'.
	self addEntity: player1 at: 0@0.
	player2 := GameEntity new: 'skeleton'.
	self addEntity: player2 at: 3@4.
	player3 := GameEntity new: 'magician'.
	self addEntity: player3 at: 3@0.
	^ self