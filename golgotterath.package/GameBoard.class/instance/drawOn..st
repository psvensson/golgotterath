drawing
drawOn: aCanvas
	" Draw all map tiles visible in the viewport. Also draw entities sorted in correct y-order for a given tile position. " 
	| |
	"Transcript show: 'drawOn';cr."
	aCanvas fillRectangle: self bounds color: Color black.
	"self drawGameboardOn: aCanvas 	."
	"sortedcol do: 	[ :something || x y obj |
		x:= something at: 'x'.
		y := something at: 'y'.
		obj := something at: 'obj'.
		obj paint: self at: aCanvas pos: (x @ y).	
	]"
	self drawViewportOn: aCanvas.