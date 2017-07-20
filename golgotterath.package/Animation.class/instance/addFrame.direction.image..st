adding
addFrame: frameNo direction: dir image: image
	| framelist aMorph |
	framelist := frames at: frameNo ifAbsent: [ Dictionary new ].
	aMorph := ImageMorph new image: image.
	framelist at: dir put: aMorph.	
	frames at: frameNo put: framelist