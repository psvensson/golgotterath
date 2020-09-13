initialization
buildButton: label action: action
	| b |
	b := PluggableButtonMorph
		on: self
		getState: nil
		action: action
		label: label
		menu: nil.
	b
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 24);
		color: Color lightGreen;
		hResizing: #spaceFill
		"vResizing: #spaceFill".
	^ b