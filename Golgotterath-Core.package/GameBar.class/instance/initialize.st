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
	textField := self createTextField.	
	self addMorph: textField.
	statusField := self createStatusField.
	self addMorph: statusField