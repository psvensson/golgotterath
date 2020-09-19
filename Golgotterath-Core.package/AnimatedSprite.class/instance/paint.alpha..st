accessing
paint: gameboard  alpha: alpha
	| animation img |
	animation := self getOldAnimation.
	animation currentFrame
		ifNotNil: [ img := animation currentFrame.
			img
				alpha: alpha;
				position:
					(self calculatePositionFromGameboard: gameboard)
						+ self calculateAnimationOffset.
			"Logger log:'Sprite ';log:name;log:' painted at ';log:img position;cr.	"	""
			 ]