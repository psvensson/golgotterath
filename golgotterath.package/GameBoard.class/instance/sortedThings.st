accessing
sortedThings
	| top bottom right left sortedcol |
	top := viewPort at: #top.
	bottom := viewPort at: #bottom.
	right := viewPort at: #right.
	left := viewPort at: #left.
	sortedcol := SortedCollection sortBlock: [:c1 :c2 | |y1 y2 x1 x2 o1 o2 isTarget ty1 tx1|
		o1 := c1 at: 'obj'.
		o2 := c2 at: 'obj'.
		x1 := c1 at: 'x'.
		x2 := c2 at: 'x'.
		y1 := c1 at: 'y'.
		y2 := c2 at: 'y'.
		ty1 := o1 targety.
		tx1 := o1 targetx.
		isTarget := o1 isTheTargetOf: o2.
		ty1 isNil ifFalse: [ isTarget := (ty1 = (y2 - 1) )].
		((isTarget or:  (y1 >= y2) ))]. 	
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
					tile boardx: y; boardy: y.
					tmpobj := Dictionary new.
					tmpobj at: 'x' put: x; at: 'y' put: y; at: 'obj' put: tile.
					sortedcol add: tmpobj.
				].			
						
				  ] ].
	^ sortedcol reverse