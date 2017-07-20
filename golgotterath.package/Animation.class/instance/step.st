stepping and presenter
step
	| aFrame directionFrames |
	currentFrame ifNotNil: [ :arg | self removeMorph: currentFrame ].
	directionFrames := (frames at: frame).
	aFrame := directionFrames at: direction.	
	aFrame position: self position .	
	self addMorph: aFrame.
	currentFrame := aFrame .
	frame := frame + 1.
	frame > frames size
		ifFalse: [ ^ self ].
	frame := 1.
	self stopStepping