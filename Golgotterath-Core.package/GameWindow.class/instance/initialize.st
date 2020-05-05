initialization
initialize
	super initialize.
	self
		color: Color black;
		title: ''.
	closeBox := nil.	
	gamebar := GameBar new.
	gamebar
		text: 'Loading...';
		left: 100.
	self addMorph: gamebar.
	gameboard := GameBoard new.
	gameboard topbar: gamebar.
	gameboard
		top: 30;
		left: 0.
	self addMorph: gameboard.
	gameboard startGame.
	"self changed."
	"gamebar changed."
	self extent: 1150 @ 700.
	gameboard
		extent: 1150 @ 700;
		changed.
	self
		extent: 1150 @ 700;
		color: Color black;
		changed