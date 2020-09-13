initialization
initializeButtons	
	newGameButton := self buildButton: #newGameLabel action: #newGame.
	joinLocalButton := self
		buildButton: #joinLanLabel
		action: #joinServer.
	joinLocalButton disable.
	startLocalButton := self
		buildButton: #startLanLabel
		action: #startServer.
	startLocalButton disable.
	self addMorph: startLocalButton.
	self addMorph: joinLocalButton.
	self addMorph: newGameButton