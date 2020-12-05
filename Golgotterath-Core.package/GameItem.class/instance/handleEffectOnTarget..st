accessing
handleEffectOnTarget: entity

	kind = #weapon ifTrue: [ 
		| damage |
		damage := self getRandomDamage.		
		(self attributes at: #subtype) = 'ranged' ifTrue: [ 
			Transcript show:'adding ',self asString,' to inventory of ',entity name;cr.
			entity inventory add: self ].		
		^ damage ]