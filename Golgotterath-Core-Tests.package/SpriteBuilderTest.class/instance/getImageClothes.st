test
getImageClothes
	| lbytes |
	lbytes := self getClothes base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.