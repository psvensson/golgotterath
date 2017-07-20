stepping and presenter
step
	| aFrame directionFrames |
	currentFrame ifNotNil: [ :arg | self removeMorph: currentFrame ].
	directionFrames := frames at: direction.
	aFrame := directionFrames at: frame.	
	aFrame position: self position .	
	self addMorph: aFrame.
	currentFrame := aFrame .
	Transcript show: 'animation ',name,' frame ',frame asString,' direction ',direction asString. 
	Transcript cr.
	frame := frame + 1.
	frame > frames size
		ifFalse: [ ^ self ].
	frame := 1.
	self stopStepping