initialization
initializeHelpWindow
	| closeButton |
	help := BorderedMorph new.
	help
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellInset: 5 @ 5;
		listCentering: #justified;
		wrapCentering: #topLeft;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		top: 100;
		left: 100;
		color: Color darkGray.
	closeButton := SimpleButtonMorph new.
	closeButton
		target: self; actionSelector: #closeHelpWindow; 
		label: 'Close'
			font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18).
	help addMorph: closeButton.
	help
		addMorph: (GameBar getText: 'o <direction> - open door at direction').
	help addMorph: (GameBar getText: '? - show help').	
	help addMorph: (GameBar getText: 'q - quaff a potion').
	help addMorph: (GameBar getText: 'e - equip an armour').
	help addMorph: (GameBar getText: 'w - wield a weapon').
	help addMorph: (GameBar getText: 'o <dir> - open a door').
	help addMorph: (GameBar getText: 'f <dir> - fire a ranged weapon').
	help addMorph: (GameBar getText: 'd - drop an item').
	help addMorph: (GameBar getText: 'g - get an item off the ground').
	help addMorph: (GameBar getText: 'i - show Inventory').
	help
		addMorph:
			(GameBar
				getText:
					'The numeric keyboard also move the player character in any of eight directions').
	help
		addMorph:
			(GameBar
				getText: 'Arrow keys up,down,left right move the player character').
	help addMorph: (GameBar getText: 'Instructions' points: 22 color: Color green).
	^ help