animations
getWorldAnimationStep
	| delta psprite reversedelta rv  |
	psprite := player animatedSprite.
	delta := (GolUtil getDeltaForDirectionValue: psprite direction) .
	"reversedelta := (delta x negated)@(delta y negated)."
	
	rv := (delta x * animationStepSize)@(delta y * animationStepSize).
	"Transcript show: 'getWorldAnimationStep returns ',rv asString;cr."
	^ rv