accessing
attack: entity
	self resolveAttack: entity 
		ifHit: [
			Logger log:'A hit!';cr.
			self dealDamageTo: entity] 
		ifMiss: [
			Logger log:'A miss!';cr.]
	