tests
testLoadSprite
	| sprite | 
	sprite := Human new.
	self assert: (sprite spriteImages) size equals: 64