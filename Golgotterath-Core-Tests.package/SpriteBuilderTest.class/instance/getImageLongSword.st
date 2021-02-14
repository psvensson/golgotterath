test
getImageLongSword
	| lbytes |
	lbytes := self getLongsword base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.