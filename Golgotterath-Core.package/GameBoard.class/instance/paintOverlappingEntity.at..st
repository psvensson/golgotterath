accessing
paintOverlappingEntity: pos at: aCanvas
	runningAnimations  do: [ :entity |
		(((entity animatedSprite target x) = pos x) and: ((entity animatedSprite target y) = pos y) ) ifTrue: [ 
			entity animatedSprite paint: self at: aCanvas
		]
 	]