accessing
getNextWallInDirection: dir from: pos
	| wall p |
	p := GolUtil getTargetForDirectionString: dir position: pos.
	wall := gameMap mapAt: p.
	[GolUtil isFloor: wall]
		whileTrue: [ p := GolUtil getTargetForDirectionString: dir position: p.
			wall := gameMap mapAt: p ].
	^ wall