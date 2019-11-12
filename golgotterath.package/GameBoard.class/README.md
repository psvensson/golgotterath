How to open a default GameBoard, in a playground do;

| board |
board := GameBoard new.
board openInWorld.

------

Animated sprites (c) Clint Bellanger and used through CC license; https://opengameart.org/content/isometric-hero-and-creatures

------

How to read in and convert sprite sheets;

------
"Make and encode the original image file bytes"
img := PNGReadWriter formFromStream: 'imagefile.png' asFileReference binaryReadStream.
writeStream := WriteStream on: ByteArray new.
PNGReadWriter putForm: img onStream: writeStream.
encoded := writeStream contents base64Encoded.

"Decode the base64Encoded bytes and display the image"
byteArray := encoded base64Decoded.
newImg := PNGReadWriter formFromStream: byteArray readStream.
newImg asMorph openInHand.

method := (String streamContents: [:s |
    s
        nextPutAll: 'getEncoded';
        nextPut: Character cr;
        nextPut: Character tab;
        nextPut: $';
        nextPutAll: encoded;
        nextPut: $']).
"Add the method to the Sprite subclass"
Human compile: method

------

Note!  The getEncoded method created does not have the return charatcer, so you need to edit the method and formally return the value using ^