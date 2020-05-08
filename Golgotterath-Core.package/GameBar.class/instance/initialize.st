initialization
initialize
	super initialize.
	self
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft.
	self addMorph: self createTextField.
	self addMorph: self createStatusField