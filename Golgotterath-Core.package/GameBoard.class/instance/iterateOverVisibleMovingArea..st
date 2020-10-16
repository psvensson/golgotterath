drawing
iterateOverVisibleMovingArea: aBlock
	| top bottom right left delta |
	delta := GolUtil
		getDeltaForDirectionValue: player animatedSprite direction.
	top := delta y = -1
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	bottom := delta y = 1
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	left := delta x = -1
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	right := delta x = 1
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	self
		iterateOverVisibleAreaAdjusted: aBlock
		top: top
		bottom: bottom
		right: right
		left: left