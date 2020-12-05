accessing
dealDamageTo: entity

	| damage |
	damage := 1.
	self weapon ifNil: [ 
		self abilities at: #dam ifPresent: [ 
			damage := self getRandomDamage.
			] ].
	self weapon ifNotNil: [ 
		damage := weapon handleEffectOnTarget: entity ].
	self dealDamageTo: entity damage: damage