initialization
animateEffect: aCanvas
	| textMorph |
	textMorph := TextMorph new.
	textMorph contents: text.
	textMorph
		color: color;
		autoFit: true.
	textMorph
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: fontSize).
	textMorph
		position: startPosition x @ (startPosition y - (step * movementPerStep)).
	"oldMorph isNil ifFalse: [ aCanvas remove: oldMorph ].
	oldMorph := textMorph."
	textMorph drawOn: aCanvas.
	step := step + 1.