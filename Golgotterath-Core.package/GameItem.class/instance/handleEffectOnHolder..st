accessing
handleEffectOnHolder: holder
	(name findString: 'healing_potion') > 0
		ifTrue: [ self handleHealing: holder ].
	(name findString: 'invisibility_potion') > 0
		ifTrue: [ self handleInvisibility: holder ]