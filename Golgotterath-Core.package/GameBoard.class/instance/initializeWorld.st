initialization - private
initializeWorld

	worldCoords := self position.
	worldLastPosition := 0 @ 0.
	worldAnimationFrame := 1.
	Transcript show:'****************************** initializeWorld worldCoord := ',worldCoords  asString;cr.