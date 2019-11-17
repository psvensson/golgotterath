accessing
drawViewportOn: aCanvas
	| top bottom right left |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.	
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x || entity tile worldpos |		
				worldpos := self getWorldCoordsFromOffset: x@y.				
				tile := gameMap mapAt: worldpos.
				tile boardpos: worldpos.
				tile paint: self at: aCanvas.
				self paintOverlappingEntity: worldpos at: aCanvas.				
				gameMap entitiesAt: worldpos ifPresent: [ 
					entity := gameMap entitiesAt: worldpos.
					entity paint: self at: aCanvas.					
				]	
	 ] ]