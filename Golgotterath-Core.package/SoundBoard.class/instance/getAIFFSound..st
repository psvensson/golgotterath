initialization
getAIFFSound: encoded
	| byteArray file |
	byteArray := encoded base64Decoded.
	file := AIFFFileReader new readFrom: (byteArray readStream).
	^ file sound
	
	