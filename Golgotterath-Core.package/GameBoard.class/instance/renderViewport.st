drawing
renderViewport

	self iterateOverVisibleMovingArea: [ :pos | 
		self renderViewportPosition: pos ]
	"self
		iterateOverVisibleAreaBorder:  [ :pos | 
			| worldpos  |
			worldpos := self getWorldCoordsFromOffset: pos.
			self paintDarkness: worldpos 
			].	"