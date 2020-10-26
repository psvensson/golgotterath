accessing
createButton: name selector: selector

	| button |
	button := IconicButton new.
	button
		labelGraphic: (Smalltalk ui theme iconNamed: name);
		"extent: self buttonSize @ self buttonSize;"
		target: self;
		actionSelector: selector;
		color: Color transparent.
	"scaledToSize: self buttonSize @ self buttonSize"
	^ button