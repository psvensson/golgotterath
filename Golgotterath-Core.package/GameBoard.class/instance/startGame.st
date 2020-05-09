initialization - private
startGame
	| then now |
	^ [ then := DateAndTime now.
	topbar
		text: 'Starting game...';
		left: 100.
	[self showWelcomeEffect] future .	
	[self initializeWorld] future.
	self initializeGameMap
		onSuccessDo: [ :result | 
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
			self
				invalidRect: (Rectangle center: self position extent: self extent).
			Logger
				log: 'Golgotterath initialization took ';
				log: now - then;
				log: ' seconds ' ] ] future