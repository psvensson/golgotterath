instance creation
base64EncodeFromImage: image

	| writeStream |
	writeStream := WriteStream on: ByteArray new.
	PNGReadWriter putForm: image onStream: writeStream.
	^ writeStream contents base64Encoded