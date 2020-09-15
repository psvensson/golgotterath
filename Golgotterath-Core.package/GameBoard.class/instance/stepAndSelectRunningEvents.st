accessing
stepAndSelectRunningEvents
	^ events select: [ :something | something stepAnimation ]