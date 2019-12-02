accessing
connectToSurroundingNodes: tile
	| desttile x1 x2 y1 y2 edges |
	edges := OrderedCollection new.
	x1 := (tile boardpos x) - 1.
	x2 := (tile boardpos x) + 1.
	y1 := (tile boardpos y) - 1.
	y2 := (tile boardpos y) + 1.
	y1 to: y2 do: [ :y |
		x1 to: x2 do: [ :x | | edge |
				desttile := self mapAt: x@y. 
				(self isWalkable: desttile) ifTrue: [ 	
					edge := Array with:	(self posToSymbol: (tile boardpos) )
											with: (self posToSymbol: (desttile boardpos) ) .		
					Transcript show: 'adding edge ',edge asString;cr.
					edges add: edge ]]].
	^ edges	 asArray 					