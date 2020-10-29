initialization
initializeButtons

	| buttonMorph |
	buttonMorph := Morph new
		               layoutPolicy: RowLayout new;
		               color: Color transparent;
		               hResizing: #shrinkWrap;
		               wrapCentering: #topLeft;
		               listCentering: #topLeft.
	"extent: 150 @ 30;"
	increaseButton := self
		                  createButton: #glamorousZoomIn
		                  selector: #zoomIn.
	decreaseButton := self
		                  createButton: #glamorousZoomOut
		                  selector: #zoomOut.
	rotateRButton := self createButton: #smallRedo selector: #rotateR.
	rotateLButton := self createButton: #smallUndo selector: #rotateL.

	buttonMorph addMorph: rotateRButton.
	buttonMorph addMorph: rotateLButton after: rotateRButton.
	buttonMorph addMorph: decreaseButton after: rotateLButton.
	buttonMorph addMorph: increaseButton after: decreaseButton.

	self addMorph: buttonMorph