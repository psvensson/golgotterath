initialization - private
startGame
	| then now |
	then := DateAndTime now.
	self initializeGameMap.
	self
		initializeViewport;
		initializePlayer;
		initializeInventoryList;
		initializeSoundboard.
	minimap := GameMinimap new.
	minimap player: player.
	self gameboardFocus: player boardPosition.
	self
		color: Color black;
		changed.
	self onLevelChanged.
	self render.
	now := DateAndTime now.
	Logger
		log: 'Golgotterath initialization took ';
		log: now - then;
		log: ' seconds ';
		cr.
	self startStepping.
	self playAnimation: 'walk' for: player.
	animationStepSize := 1 / "self animationFrames" player animatedSprite getOldAnimation frames size .
	