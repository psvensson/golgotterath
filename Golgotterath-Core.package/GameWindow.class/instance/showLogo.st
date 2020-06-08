initialization
showLogo
	logo ifNil: [ logo := self class getImageFromEncoded: (self class getEncodedLogo ) ].
	self addMorph: logo