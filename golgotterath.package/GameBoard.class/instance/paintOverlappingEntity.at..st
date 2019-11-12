accessing
paintOverlappingEntity: pos at: aCanvas
	runningAnimations  do: [ :entity |
		(((entity targetx) = pos x) and: ((entity targety) = pos y) ) ifTrue: [ 
			"Transcript show: 'overlap painting entity while moving';cr."
			entity paint: self at: aCanvas pos: (entity boardx@entity boardy).
		]
 	]