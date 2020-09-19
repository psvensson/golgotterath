initialization
initialize
	super initialize.
	self
		layoutPolicy: RowLayout new;
		listDirection: #topToBottom;
		color: Color transparent;
		cellInset: 10; 
		left:0;
		color: Color transparent ;
		cellPositioning: #topLeft.
	self addMorph: self createTextField.
	self addMorph: self createStatusField