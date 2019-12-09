paint
paintOverlappingEntity: pos at: aCanvas
	runningAnimations  do: [ :entity || target |
		target := entity animatedSprite target.
		target ifNotNil: [ 
			 (((target x) = pos x) and: ((target y) = pos y) ) ifTrue: [ 
			entity animatedSprite paint: self at: aCanvas
		]]		
 	]