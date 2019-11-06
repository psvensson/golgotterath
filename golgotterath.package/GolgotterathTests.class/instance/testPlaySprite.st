tests
testPlaySprite
	| sprite | 
	sprite := Human new.
	sprite play: 'walk'.
	self assert: (sprite getOldAnimation) isNotNil .
	sprite play: 'shoot'.
	self assert: sprite getOldAnimation name equals: 'shoot' .