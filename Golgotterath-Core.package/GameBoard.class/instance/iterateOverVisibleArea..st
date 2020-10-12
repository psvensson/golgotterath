drawing
iterateOverVisibleArea: aBlock
	| top bottom right left |
	viewPort
		ifNotNil: [ top :=  viewPort at: #top.
			bottom := viewPort at: #bottom.
			right :=  viewPort at: #right.
			left := viewPort at: #left.
			top to: bottom do: [ :y | left to: right do: [ :x | aBlock value: (x @ y) ] ] ]