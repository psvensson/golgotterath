data
octantTransform

	| rv |
	rv := OrderedCollection new.
	rv add: { 
			(#xx -> 1).
			(#xy -> 0).
			(#yx -> 0).
			(#yy -> 1) } asDictionary.
	rv add: { 
			(#xx -> 0).
			(#xy -> 1).
			(#yx -> 1).
			(#yy -> 0) } asDictionary.
	rv add: { 
			(#xx -> 0).
			(#xy -> -1).
			(#yx -> 1).
			(#yy -> 0) } asDictionary.
	rv add: { 
			(#xx -> -1).
			(#xy -> 0).
			(#yx -> 0).
			(#yy -> 1) } asDictionary.
	rv add: { 
			(#xx -> -1).
			(#xy -> 0).
			(#yx -> 0).
			(#yy -> -1) } asDictionary.
	rv add: { 
			(#xx -> 0).
			(#xy -> -1).
			(#yx -> -1).
			(#yy -> 0) } asDictionary.
	rv add: { 
			(#xx -> 1).
			(#xy -> 0).
			(#yx -> 0).
			(#yy -> -1) } asDictionary.
	rv add: { 
			(#xx -> 1).
			(#xy -> 0).
			(#yx -> 0).
			(#yy -> 1) } asDictionary.
	^ rv