initialization
initialize
	super initialize.
	self
		color: Color black;
		"deleteCloseBox;"
			title: ''.
	self initializeGamebar.
	self initializeGameboard.
	self showLogo.
	self initializeMenu.
	
	self changed