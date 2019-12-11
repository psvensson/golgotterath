initialization
initialize
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
	boardDrawOffset := 0 @ 0.
	