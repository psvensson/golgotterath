initialization
initializeGameboard
	gameboard := GameBoard new.
	gameboard topbar: gamebar.
	gameboard
		top: 30;
		left: 0.
	self addMorph: gameboard.
	self
		extent: 1150 @ 700;
		color: Color black.
	gameboard startGame.
	
	gameboard
		extent: 1150 @ 700;
		color: Color black;
		changed