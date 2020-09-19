accessing
getDeltaFromGameboard: gameboard
	| wc dx dy |
	wc := gameboard worldCoords .
	dx := (wc x - boardPosition x) * 64. 
	dy := (wc y - boardPosition y) * 64.
	
	^(GolUtil toISO:(dx@dy)).