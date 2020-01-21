initialization
animateEffect: aCanvas
	| textMorph |
	textMorph := TextMorph new.
	textMorph contents: text.
	textMorph color: color.
	textMorph position: (startPosition x)@(startPosition y - (step * movementPerStep)).
	"oldMorph isNil ifFalse: [ aCanvas remove: oldMorph ].
	oldMorph := textMorph."
	textMorph drawOn: aCanvas.
	step := step +1.