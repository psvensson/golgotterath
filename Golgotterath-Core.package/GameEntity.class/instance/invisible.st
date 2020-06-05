accessing
invisible
	| i |
	i := abilities at: #invisible ifAbsent: [  ].
	^ i isNotNil