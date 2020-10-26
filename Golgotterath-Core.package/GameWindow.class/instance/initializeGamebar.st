initialization
initializeGamebar
	gamebar := GameBar new.
	gamebar
		text: 'Loading...';
		color: Color black;
		top:0;
		left: 0.
	self addMorph: gamebar.