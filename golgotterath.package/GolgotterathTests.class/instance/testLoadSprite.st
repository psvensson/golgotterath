tests
testLoadSprite
	| sprite |
	sprite := Sprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256.
	self assert: (sprite spriteImages) size equals: 64