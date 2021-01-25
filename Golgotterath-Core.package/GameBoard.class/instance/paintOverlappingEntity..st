drawing
paintOverlappingEntity: pos

	runningAnimations do: [ :entity | 
		| target |
		target := entity boardPosition.

		target ifNotNil: [ 
			target = pos ifTrue: [ 
				Transcript
					show: 'paintOverlappingEntity repainting entity at pos '
						, entity boardPosition asString , ' target ';
					cr.

				entity animatedSprite paint: self boardPosition: pos ] ] ]