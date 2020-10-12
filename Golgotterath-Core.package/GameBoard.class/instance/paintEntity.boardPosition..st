drawing
paintEntity: entity boardPosition: boardPosition
	| alpha sprite img |
	alpha := 1.0.
	sprite := entity animatedSprite.
	entity isInvisible
		ifTrue: [ alpha := entity = player
				ifTrue: [ 0.3 ]
				ifFalse: [ 0 ] ].
	img := sprite
		paint: self
		alpha: alpha
		boardPosition: entity visiblePosition.
	self addMorphFront: img