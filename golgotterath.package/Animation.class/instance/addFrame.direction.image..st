adding
addFrame: frameNo direction: dir image: image
	| framelist|
	framelist := frames at: frameNo ifAbsent: [ Dictionary new ].	
	framelist at: dir put: image.	
	frames at: frameNo put: framelist