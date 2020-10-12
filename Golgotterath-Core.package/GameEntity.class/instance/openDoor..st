initialization - private
openDoor: dir
	| t door |
	t := self getTargetForDirectionString: dir boardPosition: boardPosition .
	door := gamemap mapAt: t.
	(GolUtil isDoor: door)
		ifTrue: [ door sprite toggle ]
		ifFalse: [ Transcript
				show: 'No door there..';
				cr ]