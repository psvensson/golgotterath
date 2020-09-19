drawing
iterateOverVisibleAreaBorder: aBlock
	| top bottom right left width|
	width := 3.
	viewPort
		ifNotNil: [ top := viewPort at: #top.
			bottom := viewPort at: #bottom.
			right := viewPort at: #right.
			left := viewPort at: #left.
			top - width to: bottom + width do: [ :y | left - width to: right + width do: [ :x | aBlock value: x@y ] ] ]