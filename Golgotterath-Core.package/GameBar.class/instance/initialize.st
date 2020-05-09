initialization
initialize
	super initialize.
	self
		layoutPolicy: RowLayout new;
		listDirection: #topToBottom;
		cellInset: 20; color: Color black;
		cellPositioning: #topLeft.
	self addMorph: self createTextField.
	self addMorph: self createStatusField