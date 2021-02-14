test
getImageHead2
	| lbytes |
	lbytes := self getmaleHead2 base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.