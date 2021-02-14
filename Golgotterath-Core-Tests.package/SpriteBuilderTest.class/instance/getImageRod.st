test
getImageRod
	| lbytes |
	lbytes := self getRod base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.