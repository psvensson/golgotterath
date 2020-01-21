initialization
animateAndCheckIfDone: aCanvas
	"Logger log:'animateAndCheckifDone';cr."
	self animateEffect: aCanvas.
	^ step = self finalStep .
	