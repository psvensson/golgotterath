stepping and presenter
stepAnimation
	| aFrame directionFrames |
	"currentFrame ifNotNil: [ self removeMorph: currentFrame ]."
	Transcript show: 'stepping animation.';cr.
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	aFrame position: (self position).
	"self addMorph: aFrame."
	currentFrame := aFrame .
	frame := frame + 1. 
	frame > frames size
		ifFalse: [ ^ false ].
	frame := 1.
	^ true.  