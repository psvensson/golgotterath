test
getImageGreatsword
	| lbytes |
	lbytes := self getGreatsword  base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.