initialization
initializeButtons
	newGameButton := PluggableButtonMorph new.
	joinLocalButton := PluggableButtonMorph new.
	startLocalButton := PluggableButtonMorph new.
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