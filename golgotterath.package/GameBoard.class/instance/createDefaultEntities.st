accessing
createDefaultEntities
	| player1 player2 player3 |
	entities := Dictionary new.
	player1 := MaleLight new.
	player1 play: 'walk'.
	player := player1.
	self addEntity: player1 at: 0@0.
	player2 := Skeleton new.
	player2 play: 'walk'.
	self addEntity: player2 at: 3@3.
	player3 := Magician new.
	player3 play: 'walk'.
	self addEntity: player3 at: 3@0.