animations
getWorldAnimationStep
	| stepSize delta psprite reversedelta |
	psprite := player animatedSprite.
	delta := (GolUtil getDeltaForDirectionValue: psprite direction) .
	reversedelta := (delta x negated)@(delta y negated).
	stepSize := 1 / psprite getOldAnimation frames size.
	^ reversedelta * stepSize