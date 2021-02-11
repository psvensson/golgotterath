accessing
initializeButtons

	closeButton := SimpleButtonMorph new.
	closeButton
		target: self;
		actionSelector: #closeListPanel;
		label: 'Close'
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18).
	self addMorph: closeButton