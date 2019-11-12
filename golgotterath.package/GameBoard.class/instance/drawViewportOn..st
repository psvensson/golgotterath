accessing
drawViewportOn: aCanvas
	| top bottom right left |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.	
	top to: bottom by: 1 do: 
		[ :y | left to: right by: 1 do: 
			[ :x || entity tile |		
				self map at: x@y ifPresent: [
					tile := (self map) at: x@y.
					tile boardx: y; boardy: y.
					tile paint: self at: aCanvas pos: (x @ y).
					self paintOverlappingEntity: x@y at: aCanvas.
				].			
				self entities at: x@y ifPresent: [ 
					entity := self entities at: x@y.
					entity paint: self at: aCanvas pos: (x @ y).					
				]	
	 ] ].