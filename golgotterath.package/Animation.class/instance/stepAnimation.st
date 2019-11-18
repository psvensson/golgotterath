stepping and presenter
stepAnimation
	| aFrame directionFrames |
	"currentFrame ifNotNil: [ self removeMorph: currentFrame ]."	
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	"aFrame position: (self position)."
	"Transcript show: 'stepping animation. position:',self position asString  ;cr."
	"self addMorph: aFrame."
	currentFrame := aFrame .
	"Transcript show: 'stepping animation, frame = ',frame asString;cr."
	frame := frame + 1. 	
	frame > frames size
		ifFalse: [ ^ false ].
	frame := 1.
	^ true.  