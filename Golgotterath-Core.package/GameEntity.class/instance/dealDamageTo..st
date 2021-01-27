accessing
dealDamageTo: entity

	| damage cause|
	 cause := self name , '''s bare hands'.
	damage := 1.
	self weapon ifNil: [ 
		self abilities at: #dam ifPresent: [ 
			damage := self getRandomDamage.
			] ].
	self weapon ifNotNil: [ 
		cause := self name ,'''s ', weapon name.
		damage := weapon handleEffectOnTarget: entity ].
	self dealDamageTo: entity damage: damage cause: cause