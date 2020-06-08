initialization
initializeMenu
	menu := GameMenu new.
	menu
		top: 220;
		left: 30;
		onNewGame: [ Transcript
				show: 'New Game';
				cr.
				self hideMenu.
				logoAlpha := 1.0.
				hideSteps := 10.
				self startStepping . ].
	self showMenu