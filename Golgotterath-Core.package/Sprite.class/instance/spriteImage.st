initialization
spriteImage
	"The subclasses (like Human) implement 'getEncoded' which return the base64 encoded string of the"
	"sprite sheet png"
	"|str bytearray stream|
	
	str := self getEncoded .
	bytearray := str base64Decoded .
	stream := bytearray  readStream.
	^ PNGReadWriter formFromStream: stream readStream"
	^ self class getEncodedSprite: self className forString: self getEncoded