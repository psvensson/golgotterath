initialization
initialize
	| background |
	super initialize.
	background := Morph new.
	background
		extent: 1150 @ 683;
		top: 32;
		color: Color black.
	self addMorph: background.
	self initializeGamebar.
	self initializeGameboard.
	gamebar gameboard: gameboard .
	self showLogo.
	self initializeMenu.
	self changed.
	self
		color: Color black;
		"deleteCloseBox;"
			title: ''