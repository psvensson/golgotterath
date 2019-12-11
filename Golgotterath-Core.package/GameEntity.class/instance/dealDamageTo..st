accessing
dealDamageTo: entity	
	| damage |
	damage := 1.
	self weapon ifNotNil: [ 
		damage := weapon getRandomDamage].
	entity hp: (entity hp - damage).
	entity hp < 0 ifTrue: [ entity die ]