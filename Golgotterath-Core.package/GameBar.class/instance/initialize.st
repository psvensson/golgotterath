initialization
initialize
	super initialize.
	self
		layoutPolicy: RowLayout new;
		listDirection: #topToBottom;
		cellInset: 10; color: Color black;
		left:0;
		cellPositioning: #topLeft.
	self addMorph: self createTextField.
	self addMorph: self createStatusField