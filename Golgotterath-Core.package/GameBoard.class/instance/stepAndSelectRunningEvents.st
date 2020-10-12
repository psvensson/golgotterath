animations
stepAndSelectRunningEvents
	events
		ifNotEmpty: [ events := events
				select: [ :something | 
					something stepAnimation: worldAnimationFrame .
					^ true ] ].
	^ false