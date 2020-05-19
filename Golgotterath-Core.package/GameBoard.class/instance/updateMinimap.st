action
updateMinimap
	| actualrooms downpos startpos |
	minimap
		ifNil: [ minimap := GameMinimap new.
			self addMorph: minimap.
			minimap
				gamemap: gameMap;
				player: player.
			minimap generateMap.
			actualrooms := gameMap dungeon rooms
				select: [ :r | (r area at: #type) = #room ].
			downpos := gameMap getFreeTileForRoom: actualrooms last.
			startpos := gameMap getFreeTileForRoom: actualrooms first.
			minimap plotPointAt: startpos color: Color yellow.
			minimap plotPointAt: downpos color: Color black ].
	minimap updatePlayerPointer