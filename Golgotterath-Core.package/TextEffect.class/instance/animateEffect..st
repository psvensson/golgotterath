initialization
animateEffect: aCanvas
	textMorph
		position: startPosition x @ (startPosition y - (step * movementPerStep)).
	"oldMorph isNil ifFalse: [ aCanvas remove: oldMorph ].
	oldMorph := textMorph."
	textMorph drawOn: aCanvas.
	step := step + 1