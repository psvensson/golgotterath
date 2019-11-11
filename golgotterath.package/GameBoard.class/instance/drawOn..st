drawing
drawOn: aCanvas
	" Draw all map tiles visible in the viewport. Also draw entities sorted in correct y-order for a given tile position. " 
	| sortedcol|
	Transcript show: 'drawOn';cr.
	sortedcol := self sortedThings.
	aCanvas fillRectangle: self bounds color: Color black.
	"self drawGameboardOn: aCanvas 	."
	sortedcol do: 	[ :something || x y obj |
		x:= something at: 'x'.
		y := something at: 'y'.
		obj := something at: 'obj'.
		"Transcript show: 'drawOn at ',x asString,',',y asString,' isSprite = ',isSprite asString;cr."
		obj paint: self at: aCanvas pos: (x @ y).	
	]