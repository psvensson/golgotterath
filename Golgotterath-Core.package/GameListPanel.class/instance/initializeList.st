initializing
initializeList
	list := PluggableIconListMorph new.
	list
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 10);		
		"width:220;"
		height:300;
		width: 300;
		borderWidth: 10;
		"hResizing: #shrinkWrap;"
		"hResizing: #shrinkWrap;"
		"vResizing: #shrinkWrap;"
		wrapSelector: #wrapSelector;
		getIconSelector: #icon.
	self addMorph: list.
	list updateList