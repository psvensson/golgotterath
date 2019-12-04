adding
addFrame: frameNo direction: dir image: image
	| framelist |
	"image borderColor: (Color yellow); borderWidth: 1."
	framelist := frames at: frameNo ifAbsent: [ Dictionary new ].	
	framelist at: dir put: image.	
	frames at: frameNo put: framelist.
	currentFrame := image.