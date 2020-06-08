initialization
initializeGamebar
	gamebar := GameBar new.
	gamebar
		text: 'Loading...';
		color: Color black;
		left: 0.
	self addMorph: gamebar.