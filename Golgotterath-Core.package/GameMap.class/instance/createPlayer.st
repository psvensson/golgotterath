initialization
createPlayer
	|  dagger p |
	player := GameEntity new: 'malelight'.
	p := self getFreeTileForRoom: actualrooms first.
	self addEntity: player at: p.
	dagger := GameItem new: 'dagger'.	
	player weapon: dagger.
	player hp:100; lightradius: 4 .
	player inventory add: (GameItem new: 'invisibility_potion').
	player inventory add: (GameItem new: 'short_bow').
	player inventory add: (GameItem new: 'arrow').
	player inventory add: (GameItem new: 'arrow').
	player inventory add: (GameItem new: 'arrow').
	^ player