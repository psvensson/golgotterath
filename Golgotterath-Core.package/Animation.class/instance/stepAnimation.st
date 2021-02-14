stepping and presenter
stepAnimation
	| aFrame directionFrames |	
		"Transcript show:'Animation stepAnimation frame = ',frame asString;cr."
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	currentFrame := aFrame .
	frame := frame + 1. 	
	frame > frames size
		ifFalse: [ ^ true ].
	frame := 1.
	self stopStepping .
	^ false.  