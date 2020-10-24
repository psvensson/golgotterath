accessing
createButton: name
	| button |
	button := IconicButton new.
	button
		labelGraphic:
			((Smalltalk ui theme iconNamed: name)
				"scaledToSize: self buttonSize @ self buttonSize");
		color: Color transparent.
	^ button