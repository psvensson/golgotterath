Base class for animated sprites

Usage: 

sprite := Sprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256 spritesPerRow: 8.
	animation := Animation new.
	animation position: 1700@1000	.
	animation named: 'walk'.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(sprite getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	animation direction: 6.
	animation openInWorld .
	animation play.		

form := PNGReadWriter formFromStream: 'images/male_unarmored.png' asFileReference  readStream .
w := WriteStream on: ByteArray new.
PNGReadWriter putForm: form onStream: w.
w contents.

encodedContent := w contents base64Encoded.

PNGReadWriter formFromStream: (Base64MimeConverter mimeDecodeToBytes: encodedContent readStream).