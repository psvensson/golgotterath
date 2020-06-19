initialization
initializeMenu
	menu := GameMenu new.
	menu
		top: 220;
		left: 30;
		onNewGame: [ self newGame ].
	self showMenu