accessing
runEffects
	"Transcript show:'----- runEffects called for ',effects size asString,' effects';cr."
	effects := effects
		select: [ :effect | 
			effect doStep.
			effect step < effect maxSteps ]