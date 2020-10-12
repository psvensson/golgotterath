drawing
paintOverlappingEntity: pos 
	runningAnimations  do: [ :entity || target |
		target := entity boardPosition.
		Transcript show:'paintOverlappingEntity checking animated entity at position ',entity animatedSprite position asString,' pos ',entity boardPosition asString,' target ',target asString;cr.
		target ifNotNil: [ 
			 (target = pos) ifTrue: [ 
				Transcript show:'-- yes, repainting over floor';cr.
			entity animatedSprite paint: self boardPosition: pos
		]]		
 	]