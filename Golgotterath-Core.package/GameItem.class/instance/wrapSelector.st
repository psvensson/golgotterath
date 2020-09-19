accessing
wrapSelector
	| morph text |
	text := TextMorph new
		contents: name;
		color: Color black.
	morph := Morph new.
	morph
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 2 @ 20;
		width: 280;
			cellPositioning: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	morph
		addMorph: text;
		addMorph: self icon.
	^ morph