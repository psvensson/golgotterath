test
getImageDagge
	| lbytes |
	lbytes := self getDagger base64Decoded.
	 ^ PNGReadWriter formFromStream: lbytes readStream.