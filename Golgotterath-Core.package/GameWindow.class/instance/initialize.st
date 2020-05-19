initialization
initialize
	super initialize.
	self extent: 1150 @ 700.
	self
		color: Color black;
		deleteCloseBox;		
		title: ''.
	gamebar := GameBar new.
	gamebar
		text: 'Loading...';
		color: Color black;
		left: 0.
	self addMorph: gamebar.
	gameboard := GameBoard new.
	Transcript show:'gameboard created';cr.
	gameboard topbar: gamebar.
	gameboard
		top: 30;
		left: 0.
	self addMorph: gameboard.
	self extent: 1150 @ 700.
	Transcript show:'calling start game';cr.
	"self changed."
	"gamebar changed."
	self extent: 1150 @ 700.
	gameboard startGame.
		"onSuccessDo: [ :foo | "
			gameboard
				extent: 1150 @ 700;
				changed.
			self
				extent: 1150 @ 700;
				changed 
				"]"