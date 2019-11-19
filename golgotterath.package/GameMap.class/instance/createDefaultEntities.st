accessing
createDefaultEntities
	| player1 player2 player3 |
	
	player1 := MaleLight new.
	player1 play: 'walk'.	
	self addEntity: player1 at: 0@0.
	player2 := Skeleton new.
	player2 play: 'walk'.
	self addEntity: player2 at: 3@4.
	player3 := Magician new.
	player3 play: 'walk'.
	self addEntity: player3 at: 3@0.