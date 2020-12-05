drawing
renderViewport

	visibleTiles removeAll.
	tileMemory := Dictionary new.
	shadowCaster computeFov: player boardPosition.
	visibleTiles do: [ :pos | 
		"Transcript show:'rendering pos ',pos asString;cr."
		self renderViewportPosition: pos ]