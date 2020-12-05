action
dealDamageTo: entity damage: damage
	entity hp: entity hp - damage.
	entity addDamageEffect: damage.
	entity hp < 1
		ifTrue: [ 
			self getExperienceFor: entity.
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