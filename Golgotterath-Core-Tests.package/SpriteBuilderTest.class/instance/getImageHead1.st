test
getImageHead1
	| lbytes |
	lbytes := self getMaleHead1 base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.