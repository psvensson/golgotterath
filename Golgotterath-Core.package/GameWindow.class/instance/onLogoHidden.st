initialization
onLogoHidden
	self stopStepping.
	self removeAllMorphs.
	logo := nil.
	gameboard
		extent: 1150 @ 700;
		color: Color black;
		changed.
	gameboard showHelpWindow