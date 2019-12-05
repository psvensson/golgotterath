accessing
play: animName
	| animation |
	animation := self getAnimation: animName.
	animation position: self position;
					direction: self direction.
	oldAnimation ifNotNil: [ 
		"Transcript show: 'removing old animation'; cr."
		self removeMorph: oldAnimation ].
	oldAnimation := animation.
	self addMorph: animation