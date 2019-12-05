drawing
drawOn: aCanvas
	" Draw all map tiles visible in the viewport. Also draw entities sorted in correct y-order for a given tile position. " 
	aCanvas fillRectangle: self bounds color: Color black.
	self drawViewportOn: aCanvas.
	topbar update: self 