accessing enum
step

	shownFrame ifNotNil: [ self removeMorph: shownFrame ].
	self stepAnimation.
	shownFrame := self currentFrame.
	self addMorph: shownFrame