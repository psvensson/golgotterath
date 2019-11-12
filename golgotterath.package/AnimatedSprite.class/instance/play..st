accessing
play: animName
	| animation |
	animation := self getAnimation: animName.
	animation position: self position.
	animation direction: self direction.
	oldAnimation isNil ifFalse: [ 
		"Transcript show: 'removing old animation'; cr."
		self removeMorph: oldAnimation ].
	oldAnimation := animation.
	self addMorph: animation.