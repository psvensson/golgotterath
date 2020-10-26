accessing
addDamageEffect: damage

	GolUtil
		addTextEffect: damage asString
		position: self getPositionForEffect
		color: Color red
		gamemap: self gamemap