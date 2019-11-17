accessing
paintOverlappingEntity: pos at: aCanvas
	runningAnimations  do: [ :entity |
		(((entity target x) = pos x) and: ((entity target y) = pos y) ) ifTrue: [ 
			"Transcript show: 'overlap painting entity while moving';cr."
			entity paint: self at: aCanvas
		]
 	]