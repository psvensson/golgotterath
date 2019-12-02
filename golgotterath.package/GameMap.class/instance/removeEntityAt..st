accessing
removeEntityAt: pos
	self entitiesAt: pos ifPresent: [  :entity |
		entities removeKey: pos.
		entity gamemap: nil ]