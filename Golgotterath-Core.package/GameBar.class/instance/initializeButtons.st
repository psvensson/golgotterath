initialization
initializeButtons

	| buttonMorph |
	buttonMorph := Morph new
		               "extent: 150 @ 30;"
		               layoutPolicy: RowLayout new;
		               listDirection: #topToBottom;
		               color: Color transparent;
		               cellPositioning: #topLeft.
	increaseButton := self
		                  createButton: #glamorousZoomIn
		                  selector: #zoomIn.
	decreaseButton := self
		                  createButton: #glamorousZoomOut
		                  selector: #zoomOut.
	rotateRButton := self createButton: #smallRedo selector: #rotateR.
	rotateLButton := self createButton: #smallUndo selector: #rotateL.

	"buttonMorph addMorph: rotateRButton.
	buttonMorph addMorph: rotateLButton after: rotateRButton."
	buttonMorph addMorph: decreaseButton after: rotateRButton.
	buttonMorph addMorph: increaseButton after: rotateRButton.

	self addMorph: buttonMorph