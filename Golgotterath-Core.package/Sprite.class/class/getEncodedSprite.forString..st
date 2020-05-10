class initialization
getEncodedSprite: aName forString: str
	| image |
	Transcript
		show: 'Sprite.getEncodedSprite called for ' , aName className;
		cr.
	cachedEncodedSprites ifNil: [ cachedEncodedSprites := Dictionary new ].
	image := cachedEncodedSprites
		at: aName
		ifAbsentPut: [ | newimage bytearray stream |
			bytearray := str base64Decoded.
			stream := bytearray readStream.
			newimage := PNGReadWriter formFromStream: stream readStream.
			newimage ].
	^ image