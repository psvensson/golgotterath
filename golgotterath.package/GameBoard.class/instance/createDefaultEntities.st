accessing
createDefaultEntities
	| player1 player2 |
	entities := Dictionary new.
	player1 := Werewolf new.
	player1 play: 'walk'.
	player := player1.
	self addEntity: player1 at: 0@0.
	player2 := Human new.
	player2 play: 'walk'.
	self addEntity: player2 at: 3@3.