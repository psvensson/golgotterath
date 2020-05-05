accessing
drawOn: aCanvas
	
	self image
		position: self position + tileAdjustment ;
		drawOn: aCanvas