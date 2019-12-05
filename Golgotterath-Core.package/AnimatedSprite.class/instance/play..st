accessing
play: animName
	| animation |
	animation := self getAnimation: animName.
	animation position: self position.
	animation direction: self direction.
	oldAnimation ifNil: [ 
		"Transcript show: 'removing old animation'; cr."
		self removeMorph: oldAnimation ].
	oldAnimation := animation.
	self addMorph: animation