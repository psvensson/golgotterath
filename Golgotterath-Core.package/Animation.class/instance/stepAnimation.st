stepping and presenter
stepAnimation
	| aFrame directionFrames |	
		"Transcript show:'Animation stepAnimation frame = ',frame asString;cr."
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	currentFrame := aFrame .
	"TODO: take care of animation types 'play_once', 'looped' and 'back_forth"
	((type isNil) or: [type = 'play_once']) ifTrue: [self playOnce].  
	(type = 'looped') ifTrue: [ self playLooped  ].
	(type = 'back_forth') ifTrue: [ self playbackAndForth   ].