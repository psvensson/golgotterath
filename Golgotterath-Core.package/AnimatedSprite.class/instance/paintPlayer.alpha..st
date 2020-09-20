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
			"animation position: p."
			self position: p.	
					
		"Logger
				log: 'Sprite ';
				log: name;
				log: ' painted at ';
				log: img position;
				log: ' animation frame ',animation frame asString;
				log: ' worldAnimationFrame ',gameboard worldAnimationFrame asString;
				cr." ]