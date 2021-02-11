drawing
renderViewport

	gameboardView
		reset;
		radius: player lightradius;
		calculateVisibleTilesAt: player boardPosition;
		visiblePositionsInOrder: [ :pos | "Transcript show:'rendering pos ',pos asString;cr." 
			self renderViewportPosition: pos ]