initialization
spriteImage
	^ PNGReadWriter formFromStream: (Base64MimeConverter mimeDecodeToBytes: self imageSource readStream)