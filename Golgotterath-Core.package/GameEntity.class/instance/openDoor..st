initialization - private
openDoor: dir
	| target door |
	target := animatedSprite getTargetForDirectionString: dir.
	door := gamemap mapAt: target.
	(GolUtil isDoor: door)
		ifTrue: [ door toggle ]
		ifFalse: [ Transcript
				show: 'No door there..';
				cr ]