initialization
animateEffect
	textMorph
		position: startPosition x @ (startPosition y - (step * movementPerStep)).
	"oldMorph isNil ifFalse: [ aCanvas remove: oldMorph ].
	oldMorph := textMorph."
	"textMorph drawOn: aCanvas."
	step := step + 1.
	"Transcript show:'textmorph animateEffect at ',textMorph position asString;cr."
	^ textMorph 