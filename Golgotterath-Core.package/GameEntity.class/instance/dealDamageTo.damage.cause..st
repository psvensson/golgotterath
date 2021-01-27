action
dealDamageTo: entity damage: damage cause: causeString
	entity hp: entity hp - damage.
	entity addDamageEffect: damage.
	entity hp < 1
		ifTrue: [ 
			self getExperienceFor: entity.
			Transcript show: entity name, ' killed by ',causeString ;cr.
			entity die ]
		ifFalse: [ 
			Logger
				log: entity;
				log: ' took ';
				log: damage;
				log: ' in damage';
				cr.
			entity hurt ].
	gamemap gameboard updateTopbar