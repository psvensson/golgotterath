drawing
renderViewport

	gameboardView reset.
	gameboardView calculateVisibleTilesAt: player boardPosition.
	gameboardView visiblePositionsInOrder: [ :pos | "Transcript show:'rendering pos ',pos asString;cr." 
		self renderViewportPosition: pos ]