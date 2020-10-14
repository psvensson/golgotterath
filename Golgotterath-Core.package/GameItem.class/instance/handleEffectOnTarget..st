accessing
handleEffectOnTarget: entity
	kind = #weapon
		ifTrue: [ | damage |
			damage := self getRandomDamage.
			entity
				hp: entity hp - damage;
				hurt.
			GolUtil
				addTextEffect: damage asString
				position:
					(entity animatedSprite
						calculatePositionFromGameboard: entity gamemap gameboard
						boardPosition: entity boardPosition)
				color: Color red
				gamemap: entity gamemap.
			^ damage ]