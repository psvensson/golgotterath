initialization
initialize
	| then now |
	Logger log: 'Golgotterath initialization starting'.
	self showLoadingMessage.
	then := DateAndTime now.
	super initialize.
	self 
		initializeGameMap;			
		initializeViewport;
		initializePlayer;
		initializeWorld;
		initializeInventoryList;
		initializeSoundboard;
		initializeTopbar.
		
	self bounds: (0 @ 0 corner: 1050 @ 600).			
	runningAnimations := Set new.	
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	self showWelcomeEffect .
	now := DateAndTime now.
	self hideLoadingMessage.
	Logger log: 'Golgotterath initialization took ';log:(now-then);log:' seconds '
	