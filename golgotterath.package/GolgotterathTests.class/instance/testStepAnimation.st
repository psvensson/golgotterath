tests
testStepAnimation
	| sprite board anim | 
	board := GameBoard new.
	sprite := Human new.
	board addRunningAnimation: sprite.
	sprite play: 'walk'.
	board step.
	anim := sprite getOldAnimation .
	self assert: anim frame equals: 2 .