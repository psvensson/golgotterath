initialization
initialize
	| then now |
	super initialize.
	Logger log: 'Golgotterath initialization starting'.
	"self bounds: (0 @ 0 corner: 1050 @ 600)."
	"self showLoadingMessage."
	then := DateAndTime now.
	steppingTime := 1000.
	openingDoor := false.
	runningAnimations := Set new.
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	self initializeWorld.
	self initializeGameMap
		onSuccessDo: [ :result | 
			self
				initializeViewport;
				initializePlayer;
				initializeInventoryList;
				initializeSoundboard.
			self showWelcomeEffect.
			now := DateAndTime now.
			"self hideLoadingMessage."
			self
				color: Color black;
				changed.
			Logger
				log: 'Golgotterath initialization took ';
				log: now - then;
				log: ' seconds ' ]