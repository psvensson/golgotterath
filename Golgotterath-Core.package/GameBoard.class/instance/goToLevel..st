accessing
goToLevel: l
	| effect p |
	currentLevel := l.
	Transcript
		show:
			'++++++++++++++++++++++++++++++++++++++++++++++++ goToLevel: '
				, l asString;
		cr.
	effect := TextEffect new.
	effect
		color: Color green;
		fontSize: 25;
		text: '* Entering Level ' , l asString , ' *'.
	self
		addEffect: effect
		startPosition: (player animatedSprite calculatePositionFromGameboard: self).
	gameMap := self getMapForLevel: currentLevel.
	player gamemap: gameMap.
	p := gameMap getUnoccupiedTileForRoom: gameMap actualRooms first.
	self onLevelChanged.
	Transcript
		show: 'goToLevel found free position for player on new level: ' , p asString;
		cr.
	player boardPosition: p.
	self playAnimation: 'walk' for: player