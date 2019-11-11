stepping and presenter
stepAnimation
	| aFrame directionFrames |
	currentFrame ifNotNil: [ self removeMorph: currentFrame ].
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	aFrame position: (self position - (64@64)).
	self addMorph: aFrame.
	currentFrame := aFrame .
	frame := frame + 1. 
	frame > frames size
		ifFalse: [ ^ false ].
	frame := 1.
	^ true.