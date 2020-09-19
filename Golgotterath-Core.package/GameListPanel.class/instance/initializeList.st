accessing
initializeList
	list := PluggableIconListMorph new.
	list
		color: Color gray;
		top: 35;
		"left: 10;"
		"width:220;"
		height:280;
		width: 300;
		borderWidth: 10;
		"hResizing: #shrinkWrap;"
		"hResizing: #shrinkWrap;"
		"vResizing: #shrinkWrap;"
		wrapSelector: #wrapSelector;
		getIconSelector: #icon.
	self addMorph: list.
	list updateList