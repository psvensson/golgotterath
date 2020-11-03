initialization
onLogoHidden

	self stopStepping.
	self removeMorph: logo.
	logo := nil.
	gameboard
		extent: 1150 @ 700;
		color: Color black;
		changed.
	gameboard
		showHelpWindow