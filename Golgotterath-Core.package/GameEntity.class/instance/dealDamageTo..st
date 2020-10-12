accessing
dealDamageTo: entity
	| damage |
	damage := 1.
	self weapon
		ifNil: [ self abilities
				at: #dam
				ifPresent: [ damage := self getRandomDamage.
					entity hp: entity hp - damage.
					GolUtil
						addTextEffect: damage asString
						position:
							(entity animatedSprite
								calculatePositionFromGameboard: entity gamemap gameboard boardPosition: entity boardPosition)
						color: Color red
						gamemap: entity gamemap ] ].
	self weapon ifNotNil: [ damage := weapon handleEffectOnTarget: entity ].
	entity hp < 1
		ifTrue: [ self getExperienceFor: entity.
			entity die ]
		ifFalse: [ Logger
				log: entity;
				log: ' took ';
				log: damage;
				log: ' in damage';
				cr.
			entity hurt ].
		gamemap gameboard updateTopbar 