initialization - private
startGame
	| then now |
	then := DateAndTime now.
	topbar
		text: 'Starting game...';
		left: 100.
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
	self onLevelChanged.
	self render.
	Logger
		log: 'Golgotterath initialization took ';
		log: now - then;
		log: ' seconds ';
		cr.
	self startStepping.
	"self showWelcomeEffect"
	Transcript
		show:
			'****************************** startGame worldCoord = '
				, worldCoords asString;
		cr.
	self playAnimation: 'walk' for: player