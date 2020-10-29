initialization
initialize
	super initialize.
	self
		layoutPolicy: RowLayout new;
		color: Color yellow ;
		cellInset: 1; 
		hResizing: #shrinkWrap;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		left:0.
	textField := self createTextField.	
	self addMorph: textField.
	statusField := self createStatusField.
	self addMorph: statusField.
	self initializeButtons 