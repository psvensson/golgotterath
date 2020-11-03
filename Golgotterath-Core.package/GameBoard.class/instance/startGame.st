initialization - private
startGame

	| then now |
	then := DateAndTime now.
	self
		initializeGameMap;
		initializeViewport;
		initializePlayer;
		initializeInventoryList;
		initializeSoundboard.
	minimap := GameMinimap new.
	minimap player: player.
	self gameboardFocus: player boardPosition.
	self
		color: Color black;
		changed;
		onLevelChanged;
		render.
	now := DateAndTime now.
	Logger
		log: 'Golgotterath initialization took ';
		log: now - then;
		log: ' seconds ';
		cr.
	self startStepping.
	"self playAnimation: 'walk' for: player."
	self showHelpWindow.
	self updateTopbar.

	animationStepSize := 1
	                     /
	                     player animatedSprite getOldAnimation frames
		                     size "self animationFrames"