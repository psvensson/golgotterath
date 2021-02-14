stepping and presenter
playOnce 
	frame := frame + 1 . 	
	frame > frames size
		ifFalse: [ ^ true ].
	frame := 1.
	self stopStepping .
	^ false