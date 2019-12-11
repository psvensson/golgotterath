accessing
attack: entity
	self resolveAttack: entity 
		ifHit: [
			"Logger log:'A hit!';cr."
			gamemap gameboard soundBoard play: 'sword'.
			self dealDamageTo: entity] 
		ifMiss: [
			gamemap gameboard soundBoard play: 'swing'.
			Logger log:'A miss!';cr.]
	