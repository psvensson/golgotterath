drawing
drawOn: aCanvas
	" Draw all map tiles visible in the viewport. Also draw entities sorted in correct z-order for a given tile position. "
	| top bottom right left |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.
	aCanvas fillRectangle: self bounds color: Color black.
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x | self paintTile: x @ y at: aCanvas pos: (x @ y) ] ]