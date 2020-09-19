drawing
paintEntity: entity
	| alpha sprite |
	alpha := 1.0.
	sprite := entity animatedSprite.
	entity abilities
		at: #invisible
		ifPresent: [ alpha := entity = player
				ifTrue: [ 0.3 ]
				ifFalse: [ 0 ] ].
	entity = player
		ifTrue: [ sprite paintPlayer: self alpha: alpha ]
		ifFalse: [ sprite paint: self alpha: alpha ].
	self addMorphFront: sprite currentFrame.