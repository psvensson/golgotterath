accessing
arc1: i neighborCount: neighborCount
	" [i ? 2*i-1 : 2*neighborCount-1, 2*neighborCount];"
	| arcA arcB |
	arcA := i - 1 = 0 ifFalse: [ 2 * i - 1 ] ifTrue: [ 2 * (neighborCount - 1) ].
	arcB := 2 * neighborCount .
	^ { arcA . arcB }