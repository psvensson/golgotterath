accessing
goToLevel: l
	currentLevel := l.
	Transcript show:'++++++++++ goToLevel: ',l asString;cr.
	gameMap := self getMapForLevel: currentLevel . 
	player gamemap: gameMap.
	self playAnimation: 'walk' for: player