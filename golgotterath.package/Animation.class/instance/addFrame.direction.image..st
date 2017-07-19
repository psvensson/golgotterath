adding
addFrame: frameNo direction: dir image: image
	| framelist |
	framelist := frames at: frameNo ifAbsent: [ Dictionary new ].
	framelist at: dir put: image.
	Transcript
		show: 'animation ',name greaseString ,' addFrame ' , frameNo greaseString , ' direction ';
		show: dir greaseString;
		cr.
	frames at: frameNo put: framelist