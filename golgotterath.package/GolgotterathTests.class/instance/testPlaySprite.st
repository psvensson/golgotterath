tests
testPlaySprite
	| sprite anim | 
	sprite := Human new.
	sprite play: 'walk'.
	self assert: (sprite getOldAnimation) isNotNil .
	sprite play: 'shoot'.
	anim := sprite getOldAnimation.
	self assert: anim name equals: 'shoot' .
	self assert: (anim currentFrame) isNotNil  .