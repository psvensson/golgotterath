accessing
arc2: i neighborCount: neighborCount
	" [2*i+1, 2*neighborCount];"
	| arcA arcB |
	arcA := 2 * i + 1.
	arcB := 2 * neighborCount .
	^ { arcA . arcB }