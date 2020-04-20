accessing
createAreaAt: pos w: w h: h
	| area |
	area := Dictionary new.
	area at: #pos put: pos.
	area at: #h put: 3.
	area at: #w put: 3.
	^ area