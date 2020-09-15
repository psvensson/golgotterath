accessing
getNextEntityInDirection: dir from: pos
	| entity wall p |
	p := GolUtil getTargetForDirectionString: dir position: pos.
	entity := gameMap entityAt: p ifAbsent: [  ].
	wall := gameMap mapAt: p.
	[entity isNil and: (GolUtil isFloor: wall)]
		whileTrue: [ p := GolUtil getTargetForDirectionString: dir position: p.
			wall := gameMap mapAt: p.
			entity := gameMap entityAt: p ifAbsent: [  ] ].
	^ entity