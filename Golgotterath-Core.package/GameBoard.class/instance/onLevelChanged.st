accessing
onLevelChanged
	| actualrooms downpos startpos |
	minimap ifNotNil: [ self removeMorph: minimap ].
	minimap := GameMinimap new: gameMap.
	minimap updatePlayer: player.
	self addMorph: minimap getMap.
	actualrooms := gameMap dungeon rooms
		select: [ :r | (r area at: #type) = #room ].
	downpos := gameMap getFreeTileForRoom: actualrooms last.
	startpos := gameMap getFreeTileForRoom: actualrooms first.
	minimap plotPointAt: startpos color: Color yellow.
	minimap plotPointAt: downpos color: Color black