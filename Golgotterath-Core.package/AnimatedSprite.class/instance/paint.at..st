accessing
paint: gameboard at: aCanvas
	| animation img |
	animation := self getOldAnimation.
	"animation position: (position + gameboard position)."
	animation currentFrame
		ifNotNil: [ img := animation currentFrame.
			img
				position:
					(self calculatePositionFromGameboard: gameboard)
						+ self getAnimationStep.
			img drawOn: aCanvas ]