test
getImageLeatherArmour
	| lbytes |
	lbytes := self getLeatherArmor base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.