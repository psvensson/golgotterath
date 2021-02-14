test
getImageShortbow
	| lbytes |
	lbytes := self getShortbow  base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.