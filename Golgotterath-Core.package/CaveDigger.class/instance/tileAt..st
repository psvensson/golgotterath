generating
tileAt: point
	^ ((quadTree get: (self pointRectFor: point) data: nil) at: 1) at: #data