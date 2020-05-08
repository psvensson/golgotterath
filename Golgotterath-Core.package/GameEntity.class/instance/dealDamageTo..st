accessing
dealDamageTo: entity
	| damage effect p |
	damage := 1.
	self weapon ifNotNil: [ damage := weapon getRandomDamage ].
	entity hp: entity hp - damage.
	effect := TextEffect new.
	effect color: Color red; fontSize:15.
	effect text: '-',damage asString.
	p :=  (entity animatedSprite calculatePositionFromGameboard: gamemap gameboard) + (50@0).
	gamemap gameboard addEffect: effect startPosition: p.
	entity hp < 1
		ifTrue: [ self exp: self exp + (entity abilities at: 'exp').
			Logger	log: '*** Experience is now: ';log: self exp;cr.
			entity die ]
		ifFalse: [ Logger log: entity;	log: ' took ';	log: damage;log: ' in damage';	cr.
			entity hurt ]