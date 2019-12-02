tests
testStepAnimation
	| sprite board anim | 
	board := GameBoard new.
	sprite := GameEntity new: 'human'.
	board addRunningAnimation: sprite.
	board step.
	anim := sprite animatedSprite getOldAnimation .
	self assert: anim frame equals: 2 .