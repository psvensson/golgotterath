drawing
iterateOverVisibleAreaAdjusted: aBlock top: atop bottom: abottom right: aright left: aleft
	| top bottom right left |
	viewPort
		ifNotNil: [ top := viewPort at: #top.
			bottom := viewPort at: #bottom.
			right := viewPort at: #right.
			left := viewPort at: #left.
			top - atop to: bottom + abottom do:
				[ :y | left - aleft to: right + aright do: [ :x | aBlock value: x @ y ] ] ]