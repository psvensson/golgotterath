accessing
sortedThings
	| top bottom right left sortedcol |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.
	sortedcol := SortedCollection sortBlock: [:c1 :c2 | 
		  (c1 at: 'x') <=  (c2 at: 'x')]. 	
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x || tmpobj entity tile |			
				self map at: x@y ifPresent: [
					tile := (self map) at: x@y.
					tmpobj := Dictionary new.
					tmpobj at: 'x' put: x; at: 'y' put: y; at: 'obj' put: tile.
					sortedcol add: tmpobj.
				].			
				self entities at: x@y ifPresent: [ 
					entity := self entities at: x@y.
					tmpobj := Dictionary new.				
					tmpobj at: 'x' put: x; at: 'y' put: y; at: 'obj' put: entity.
					sortedcol add: tmpobj
				].				
				  ] ].
	^ sortedcol 