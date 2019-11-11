accessing
sortedThings
	| top bottom right left sortedcol |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.
	sortedcol := SortedCollection sortBlock: [:c1 :c2 | 
		  ( (c1 at: 'y') >=  (c2 at: 'y') or: (c1 at: 'x') >  (c2 at: 'x'))]. 	
	bottom to: top by: -1 do: 
		[ :y | right to: left by: -1 do: 
			[ :x || tmpobj entity tile |		
					self entities at: x@y ifPresent: [ 
					entity := self entities at: x@y.
					tmpobj := Dictionary new.				
					tmpobj at: 'x' put: x; at: 'y' put: y; at: 'obj' put: entity.
					sortedcol add: tmpobj
				].			
				self map at: x@y ifPresent: [
					tile := (self map) at: x@y.
					tmpobj := Dictionary new.
					tmpobj at: 'x' put: x; at: 'y' put: y; at: 'obj' put: tile.
					sortedcol add: tmpobj.
				].			
						
				  ] ].
	^ sortedcol reverse