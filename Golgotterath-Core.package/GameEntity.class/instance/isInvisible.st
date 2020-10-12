accessing
isInvisible
	self abilities at: #invisible ifPresent: [ ^ true ].
	^ false