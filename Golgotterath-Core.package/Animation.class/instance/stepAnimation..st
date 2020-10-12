stepping and presenter
stepAnimation: worldAnimationFrame
	| aFrame directionFrames |	
		"Transcript show:'Animation stepAnimation frame = ',frame asString;cr."
	directionFrames := frames at: (worldAnimationFrame \\ frames size) + 1.
	aFrame := directionFrames at: direction.	
	currentFrame := aFrame .
	frame := frame + 1. 	
	frame > frames size
		ifFalse: [ ^ true ].
	frame := 1.
	^ false.  