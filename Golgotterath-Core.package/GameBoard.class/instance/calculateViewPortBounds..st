accessing
calculateViewPortBounds: pos

	viewPortMinX := viewPortMinX min: pos x.
	viewPortMaxX := viewPortMaxX max: pos x.
	viewPortMinY := viewPortMinY min: pos y.
	viewPortMaxY := viewPortMaxY max: pos y