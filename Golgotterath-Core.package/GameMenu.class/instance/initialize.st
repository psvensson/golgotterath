initialization
initialize 
	super initialize.
	self
		layoutPolicy: TableLayout new;
		"height: 700;"
		listDirection: #topToBottom;
		"listCentering: #justified ;"
			"cellInset: 5;"
			height: 500;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap .
	self initializeButtons