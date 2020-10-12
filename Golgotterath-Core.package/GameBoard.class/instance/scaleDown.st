accessing
scaleDown
	scaleFactor > 0.5
		ifTrue: [ scaleFactor := scaleFactor - 0.5 ].
	self render