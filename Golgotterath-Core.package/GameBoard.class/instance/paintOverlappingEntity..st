drawing
paintOverlappingEntity: pos

	runningAnimations do: [ :entity | 
		| target |
		target := entity boardPosition.

		target ifNotNil: [ 
			target = pos ifTrue: [ 
				entity animatedSprite paint: self boardPosition: pos ] ] ]