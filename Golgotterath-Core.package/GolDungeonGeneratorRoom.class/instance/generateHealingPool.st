accessing
generateHealingPool	
	| pool |
	pool := HealingPool new.
	pool stateSprite: 'basic_pool'.
	^ pool