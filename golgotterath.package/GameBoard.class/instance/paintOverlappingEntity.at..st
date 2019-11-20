accessing
paintOverlappingEntity: pos at: aCanvas
	runningAnimations  do: [ :entity |
		(((entity animatedSprite target x) = pos x) and: ((entity animatedSprite target y) = pos y) ) ifTrue: [ 
			"Transcript show: 'overlap painting entity while moving';cr."
			entity animatedSprite paint: self at: aCanvas
		]
 	]