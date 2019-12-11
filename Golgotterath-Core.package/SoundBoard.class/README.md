To create new sounds, do the following;
------------------
	
|file barray stream bstream isbinary encoded | 
barray := 'walk3.aiff' asFileReference binaryReadStream contents.
stream := barray readStream.
encoded := stream contents base64Encoded.
method := (String streamContents: [:s |
    s
        nextPutAll: 'getEncodedWalk3';
        nextPut: Character cr;
        nextPut: Character tab;        
			 nextPut: $^;
			 nextPut: $';
        nextPutAll: encoded;
        nextPut: $']).
"Add the method to the Sprite subclass"
SoundBoard compile: method

-------------------

And then modify the loadSounds method to load the new sound from the 
encoded data method.