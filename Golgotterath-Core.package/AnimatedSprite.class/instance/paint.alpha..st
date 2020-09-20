accessing
paint: gameboard alpha: alpha
	| animation img p |
	animation := self getOldAnimation.
	animation currentFrame
		ifNotNil: [ img := animation currentFrame.
			p := (self calculatePositionFromGameboard: gameboard)
				+ self calculateAnimationOffset.
			img
				alpha: alpha;
				position: p.
			self position: p
			"Logger log:'Sprite ';log:name;log:' painted at ';log:img position;cr.	"	"" ]