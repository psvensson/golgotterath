tests
testCreateAnimation
	| sprite |
	sprite := Human new.	
	self assert: sprite spriteImages size equals: 64.
	self assert: sprite animations size equals: 5.