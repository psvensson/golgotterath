accessing
paintPlayer: gameboard alpha: alpha
	| animation img p |
	animation := self getOldAnimation.
	animation currentFrame
		ifNotNil: [ img := animation currentFrame.
			p := (self calculatePositionFromGameboard: gameboard)
						+ self calculateAnimationOffset
						"+ (self getDeltaFromGameboard: gameboard)".	"gameboard boardDrawOffset".
			img
				alpha: alpha;
				position:p.
			self position: p.	
					
			"Logger
				log: 'PaintPlayer ';
				log: name;
				log: ' painted at ';
				log: img position;
				cr" ]