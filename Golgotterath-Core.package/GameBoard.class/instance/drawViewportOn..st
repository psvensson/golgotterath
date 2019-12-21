drawing
drawViewportOn: aCanvas
	| top bottom right left |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.	
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x || entity worldpos |		
				worldpos := self getWorldCoordsFromOffset: x@y.				
				self paintTileAtPos: worldpos canvas: aCanvas.
				self paintItemAtPos: worldpos canvas: aCanvas.
				gameMap entitiesAt: worldpos ifPresent: [ 
					entity := gameMap entitiesAt: worldpos.
					entity animatedSprite paint: self at: aCanvas.					
				].
			"self paintDarkness: worldpos	canvas: aCanvas "
	 ] ]