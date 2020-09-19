accessing
paintPlayer: gameboard
	| animation img |
	animation := self getOldAnimation.
	animation currentFrame
		ifNotNil: [ img := animation currentFrame.
			img
				position:
					(self calculatePositionFromGameboard: gameboard)
						+ self calculateAnimationOffset - gameboard boardDrawOffset 
			"Logger log:'Sprite ';log:name;log:' painted at ';log:img position;cr.	"	"" ]