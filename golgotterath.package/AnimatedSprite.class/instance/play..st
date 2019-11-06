accessing
play: name
	| animation |
	animation := self getAnimation: name.
	animation position: self position.
	animation direction: self direction.
	oldAnimation isNil ifFalse: [ 
		Transcript show: 'removing old animation'; cr.
		self removeMorph: oldAnimation ].
	oldAnimation := animation.
	self addMorph: animation.
	animation play.