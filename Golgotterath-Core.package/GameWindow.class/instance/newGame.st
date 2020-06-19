initialization
newGame
	Transcript
		show: 'New Game';
		cr.
	self hideMenu.
	logoAlpha := 1.0.
	hideSteps := 10.	
	self startStepping