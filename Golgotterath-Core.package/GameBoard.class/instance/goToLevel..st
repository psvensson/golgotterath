accessing
goToLevel: l
	| effect p tile|
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
		startPosition: (player animatedSprite calculatePositionFromGameboard: self boardPosition: player boardPosition ).
	gameMap := self getMapForLevel: currentLevel.
	player gamemap: gameMap.
	self onLevelChanged.
	p := gameMap getFreeTileFromFirstRoom.
	tile := (gameMap mapAt: p).
	player boardPosition: p.
	player target: p.
	Transcript show:'player is put at boardPosition ',p asString ,' on new level. isFloor = ',(GolUtil isFloor: tile) asString,' tile = ',tile name;cr.
	self playAnimation: 'walk' for: player.
	self updateTopbar