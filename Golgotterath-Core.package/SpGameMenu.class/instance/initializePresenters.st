accessing
initializePresenters

	button1 := self newButton label: 'Start Game'.
	button2 := self newButton label: 'Settings'.
	button3 := self newButton label: 'Join LAN Game'.
	button4 := self newButton label: 'Start LAN Game'.

	self focusOrder
		add: button1;
		add: button2;
		add: button3;
		add: button4