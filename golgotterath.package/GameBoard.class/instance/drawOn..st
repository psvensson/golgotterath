drawing
drawOn: aCanvas
	" Draw all map tiles visibble in the viewport. Also draw entities sorted in correct z-order for a given tile position. "

	| top bottom right left screenx screeny |
	screenx := 0.
	screeny := 0.
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.
	Transcript show: 'drawing gameboard from ' , top asString , ' to ' , bottom asString.
	Transcript cr.
	aCanvas fillRectangle: self bounds color: Color black.
	top to: bottom do: [ :y | 
		left to: right do: [ :x | 
			self paintTile: x @ y at: aCanvas pos: screenx @ screeny.
			screenx := screenx + 1 ].
		screenx := 0.
		screeny := screeny + 1 ]