test
getImageSteelarmour
	| lbytes |
	lbytes := self getSteelarmour  base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.