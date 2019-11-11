accessing
drawGameboardOn: aCanvas
	| top bottom right left  |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.	
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x || entity tile |		
				self entities at: x@y ifPresent: [ 
					entity := self entities at: x@y.
					entity paint: self at: aCanvas pos: (x @ y).
				].			
				self map at: x@y ifPresent: [
					tile := (self map) at: x@y.
					tile paint: self at: aCanvas pos: (x @ y).
				].	
	] ].