drawing
shadowCastRenderFrom: pos lightRadius: lightradius

	| distance memory seenPositions |
	seenPositions := SortedCollection new sortBlock: [ :a :b | 
		                 a x < b x and: a y < b y ].
	distance := 0.
	memory := Dictionary new.
	memory at: #top put: Dictionary new.
	memory at: #bottom put: Dictionary new.
	memory at: #right put: Dictionary new.
	memory at: #left put: Dictionary new.
	[ distance < lightradius ] whileTrue: [ 
		distance := distance + 1.
		seenPositions addAll:
			(self shadowCastRenderFrom: pos distance: distance memory: memory) ].
	^ seenPositions