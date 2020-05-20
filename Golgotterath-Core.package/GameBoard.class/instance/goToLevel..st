accessing
goToLevel: l
	|effect|
	currentLevel := l.
	Transcript show:'++++++++++++++++++++++++++++++++++++++++++++++++ goToLevel: ',l asString;cr.	
	effect := TextEffect new.
	effect color: Color green; fontSize: 25; text: '* Entering Level ',l asString,' *'.
	self
		addEffect: effect
		startPosition:
			(player animatedSprite calculatePositionFromGameboard:
				  self ).
	gameMap := self getMapForLevel: currentLevel . 
	player gamemap: gameMap.
	self onLevelChanged .
	self playAnimation: 'walk' for: player