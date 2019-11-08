accessing
createDefaultEntities
	| player |
	entities := Dictionary new.
	player := Human new.
	player play: 'walk'.
	self addEntity: player at: 1@1.