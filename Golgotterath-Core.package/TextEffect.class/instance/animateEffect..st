initialization
animateEffect: aCanvas
	| textMorph |
	textMorph := TextMorph new.
	textMorph contents: text.
	textMorph color: color.
	textMorph font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 11).
	textMorph position: (startPosition x)@(startPosition y - (step * movementPerStep)).
	"oldMorph isNil ifFalse: [ aCanvas remove: oldMorph ].
	oldMorph := textMorph."
	textMorph drawOn: aCanvas.
	step := step +1.