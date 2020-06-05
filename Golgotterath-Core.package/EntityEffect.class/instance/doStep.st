accessing
doStep
	"Transcript show:'---- stepping EntityEffect ';cr."
	step = 1 ifTrue: [ self onStart ].
	step := step + 1.
	step = maxSteps  ifTrue: [ self onStop ].
	self onStep.