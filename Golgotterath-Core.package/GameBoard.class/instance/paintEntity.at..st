drawing
paintEntity: entity at: aCanvas
	| alpha |
	alpha := 1.0.
	entity abilities
		at: #invisible
		ifPresent: [ alpha := entity = player
				ifTrue: [ 0.3 ]
				ifFalse: [ 0 ] ].
	entity animatedSprite paint: self at: aCanvas alpha: alpha