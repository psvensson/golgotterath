animations
getWorldAnimationStep
	| stepSize delta psprite reversedelta rv |
	psprite := player animatedSprite.
	delta := (GolUtil getDeltaForDirectionValue: psprite direction) .
	reversedelta := (delta x negated)@(delta y negated).
	stepSize := 1 / self animationFrames "psprite getOldAnimation frames size" .
	rv := reversedelta * stepSize.
	"Transcript show: 'getWorldAnimationStep returns ',rv asString;cr."
	^ rv