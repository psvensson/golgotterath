accessing
connectToSurroundingNodes: tile
	| desttile x1 x2 y1 y2 edges |
	edges := OrderedCollection new.
	x1 := (tile boardPosition x) - 1.
	x2 := (tile boardPosition x) + 1.
	y1 := (tile boardPosition y) - 1.
	y2 := (tile boardPosition y) + 1.
	y1 to: y2 do: [ :y |
		x1 to: x2 do: [ :x | | edge |
				desttile := self mapAt: x@y. 
				((self isWalkable: desttile) and: ((
					(tile boardPosition x) ~= x) and: (tile boardPosition y) ~= y))
					ifTrue: [ 	
						edge := Array with:	(self posToSymbol: (tile boardPosition) )
												with: (self posToSymbol: (desttile boardPosition) ) .
					edges add: edge ]]].
	^ edges	 asArray 					