initialization
initializeButtons
	increaseButton := self createButton: #glamorousZoomIn.
	decreaseButton := self createButton: #glamorousZoomOut.
	rotateRButton := self createButton: #smallRedo.
	rotateLButton := self createButton: #smallUndo.
	
	self addMorph: rotateRButton.
	self addMorph: rotateLButton.		
	self addMorph: decreaseButton.
	self addMorph: increaseButton.
	
	increaseButton
		target: self;
		actionSelector: #zoomIn.
	decreaseButton
		target: self;
		actionSelector: #zoomOut.
	rotateRButton
		target: self;
		actionSelector: #rotateR.
	rotateLButton
		target: self;
		actionSelector: #rotateL		