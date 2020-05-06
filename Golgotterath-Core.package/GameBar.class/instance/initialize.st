initialization
initialize
	super initialize.
	self
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		cellInset: 0.
	self addMorph: self createTextField.
	self addMorph: self createStatusField