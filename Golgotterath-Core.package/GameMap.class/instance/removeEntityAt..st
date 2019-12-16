accessing
removeEntityAt: pos
	self
		entitiesAt: pos
		ifPresent: [ :entity | 
			entities removeKey: pos.
			"entity gamemap: nil."
			entity hp < 1 ifTrue: [ 
				entitiesArray := entitiesArray select: [:e | e ~= entity]] ]
			