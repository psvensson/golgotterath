initialization
initializeButtons
	increaseButton := IconicButton new.
	increaseButton
		labelGraphic:
			((Smalltalk ui theme iconNamed: #glamorousZoomIn)
				scaledToSize: 16 @ 16);
		color: Color transparent.
	decreaseButton := IconicButton new.
	decreaseButton
		labelGraphic:
			((Smalltalk ui theme iconNamed: #glamorousZoomOut)
				scaledToSize: 16 @ 16);
		color: Color transparent.
	self addMorph: decreaseButton.
	self addMorphFront: increaseButton.
	increaseButton
		target: self;
		actionSelector: #zoomIn.
	decreaseButton
		target: self;
		actionSelector: #zoomOut