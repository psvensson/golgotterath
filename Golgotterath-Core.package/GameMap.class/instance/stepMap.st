stepping
stepMap
	"Step each entity and ongoing event"

	entitiesArray
		do: [ :entity | 
			entity player
				ifFalse: [ entity hp > 0
						ifTrue: [ entity step ]
						ifFalse: [ self removeEntityAt: entity boardPosition ] ] ].
	midAirEvents := midAirEvents
		select: [ :midAirEvent | 
			| result |
			result := midAirEvent moveOnMap: self.
			self handleMidAirEventEffects: midAirEvent.
			result ]