initialization - private
startGame
	| then now |
	then := DateAndTime now.
	topbar
		text: 'Starting game...';
		left: 100.
	self showWelcomeEffect.
	self initializeWorld.
	self initializeGameMap.
	"onSuccessDo: [ :result | "
	self
		initializeViewport;
		initializePlayer;
		initializeInventoryList;
		initializeSoundboard.
	topbar
		text: '';
		left: 100.
	now := DateAndTime now.
	"self hideLoadingMessage."
	self
		color: Color black;
		changed.
	self playAnimation: 'walk' for: player.
	self onLevelChanged.
	
	self startStepping.
	self render.
	
	Logger
		log: 'Golgotterath initialization took ';
		log: now - then;
		log: ' seconds '	"]"