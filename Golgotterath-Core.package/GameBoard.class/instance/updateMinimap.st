action
updateMinimap
	| actualrooms downpos startpos |
	minimap
		ifNil: [ minimap := GameMinimap new.
			self addMorph: minimap inFrontOf: self.
			minimap
				position: 0 @ 0;
				computeFullBounds;
				gamemap: gameMap;
				player: player.
			minimap generateMap.
			actualrooms := gameMap dungeon rooms
				select: [ :r | (r area at: #type) = #room ].
			downpos := gameMap getFreeTileForRoom: actualrooms last.
			startpos := gameMap getFreeTileForRoom: actualrooms first.
			minimap plotPointAt: startpos color: Color yellow.
			minimap plotPointAt: downpos color: Color black ]
		ifNotNil: [ ].
	"self
		iterateOverVisibleArea: [ :pos | 
			| tile c | 
			tile := gameMap mapAt: pos.
			c := (gameMap isWalkable: tile) ifTrue: [ Color green ] ifFalse: [ Color blue ] .
			minimap plotPointAt: pos color: c ].	"
	minimap updatePlayerPointer.
	minimap changed.