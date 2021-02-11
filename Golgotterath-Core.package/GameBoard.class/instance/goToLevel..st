action
goToLevel: l

	| effect p tile |
	currentLevel := l.

	effect := TextEffect new.
	effect
		color: Color green;
		fontSize: 25;
		text: '* Entering Level ' , l asString , ' *'.
	self addEffect: effect startPosition: (player animatedSprite
			 calculatePositionFromGameboard: self
			 boardPosition: player boardPosition).
	gameMap := self getMapForLevel: currentLevel.
	player gamemap: gameMap.
	gameboardView := GameBoardView new gameMap: gameMap.
	self onLevelChanged.
	p := gameMap getFreeTileFromFirstRoom.
	tile := gameMap mapAt: p.
	player boardPosition: p.
	player target: p.

	self playAnimation: 'walk' for: player.
	self updateTopbar