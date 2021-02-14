test
getImageShortsword
	| lbytes |
	lbytes := self getShortword base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.