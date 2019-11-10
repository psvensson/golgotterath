stepping and presenter
step
	| aFrame directionFrames |
	currentFrame ifNotNil: [ self removeMorph: currentFrame ].
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	aFrame position: (self position - (64@64)).
	self addMorph: aFrame.
	currentFrame := aFrame .
	frame := frame + 1.
	frame > frames size
		ifFalse: [ ^ self ].
	frame := 1.
	self stopStepping