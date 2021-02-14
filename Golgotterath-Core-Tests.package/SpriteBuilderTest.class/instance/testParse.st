test
testParse

	| spriteBuilder img bytes |
	bytes := self getLeatherArmor base64Decoded.
	img := PNGReadWriter formFromStream: bytes readStream.
	spriteBuilder := SpriteBuilder from: testDefinition image: img.
	self assert: spriteBuilder renderSize isNotNil.
	self assert: spriteBuilder renderOffset isNotNil.
	self deny: spriteBuilder animatedSprite animations size equals: 0.
	spriteBuilder inspect
	