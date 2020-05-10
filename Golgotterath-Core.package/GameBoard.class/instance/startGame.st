initialization - private
startGame
	| then now |
	 then := DateAndTime now.
	topbar
		text: 'Starting game...';
		left: 100.
		Transcript show:'showing welcome effect';cr.
	self showWelcomeEffect.	
		Transcript show:'initialize world';cr.
	self initializeWorld.
	Transcript show:'initialize gamemap';cr.
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
			Logger
				log: 'Golgotterath initialization took ';
				log: now - then;
				log: ' seconds ' "]" 