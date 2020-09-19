accessing
showWhatIsOnFloor: target
	| item |
	item := self gameMap
		itemAt: target
		ifAbsent: [ topbar text: ''.
			nil ].
	item ifNotNil: [ topbar text: item longname ].