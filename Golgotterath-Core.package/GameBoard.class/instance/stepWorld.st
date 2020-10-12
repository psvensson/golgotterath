animations
stepWorld
	"TODO: scroll the viewport either of four ways, if world is animated"	
	boardDrawOffset := self getWorldAnimationStep.	
	"Transcript show:'--- stepWorld boardDrawOffset = ',boardDrawOffset asString;cr."
	self changed