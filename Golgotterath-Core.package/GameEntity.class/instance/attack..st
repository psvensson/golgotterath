accessing
attack: pos
	gamemap entitiesAt: pos ifPresent: [ :entity |
		(self isAdjacentTo: pos) ifTrue: [ 
			 self resolveAttack: entity 
			ifHit: [
				] 
			ifMiss: [
				]
			]]