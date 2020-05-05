initialization - private
startGame
	| then now |
	then := DateAndTime now.
	topbar
		text: 'Starting game...';
		left: 100.
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