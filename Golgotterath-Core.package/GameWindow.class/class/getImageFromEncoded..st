as yet unclassified
getImageFromEncoded: str 
	| bytearray stream i |
	bytearray := str base64Decoded.
	stream := bytearray readStream.
	i := PNGReadWriter formFromStream: stream readStream.
	^ AlphaImageMorph new image: i 