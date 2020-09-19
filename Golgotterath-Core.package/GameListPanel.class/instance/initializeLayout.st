accessing
initializeLayout
	self
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellInset: 10 @ 20;
		width: 280;
		height:300;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		themeChanged;
		color: Color gray darker