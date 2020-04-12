initialization
initialize
	| then now |
	super initialize.
	Logger log: 'Golgotterath initialization starting'.
	self bounds: (0 @ 0 corner: 1050 @ 600).
	self showLoadingMessage.
	then := DateAndTime now.
	
	runningAnimations := Set new.
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	self initializeWorld.
	self initializeGameMap
		onSuccessDo: [ :result | 
			Logger
				log: 'initializeGameMap done';
				cr.
			self
				initializeViewport;
				initializePlayer;
				initializeInventoryList;
				initializeSoundboard;
				initializeTopbar.			
			self showWelcomeEffect.
			now := DateAndTime now.
			self hideLoadingMessage.
			self changed.
			Logger
				log: 'Golgotterath initialization took ';
				log: now - then;
				log: ' seconds ' ]