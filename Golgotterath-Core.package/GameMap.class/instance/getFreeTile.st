accessing
getFreeTile
	| tries tile |
	tries := 0.
	tile := nil.
	[(tries < 100) and: (tile isNil)] whileTrue: [ 
		| x y |
		tries := tries + 1.
		x := (self mapRadius * 2) atRandom - self mapRadius.
		y := (self mapRadius * 2) atRandom - self mapRadius.
		(self isWalkable: (self mapAt: x @ y)) ifTrue: [ 
			self itemAt: x @ y ifAbsent: [ tile := x @ y ] ] ].
	^ tile