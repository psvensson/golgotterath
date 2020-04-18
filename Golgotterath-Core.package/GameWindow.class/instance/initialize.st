initialization
initialize
	super initialize.
	self
		addCloseBox;
		color: Color black;
		title: ''.
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
	"self changed."
	"gamebar changed."
	[ self extent: 1150 @ 700 ] future
		onSuccessDo: [ :foo | 
			gameboard
				extent: 1150 @ 700;
				changed.
			self
				extent: 1150 @ 700; color: Color black;
				changed ]