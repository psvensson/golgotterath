animations
stepWorld
	| animationStep |
	"TODO: scroll the viewport either of four ways, if world is animated"	
	animationStep := self getWorldAnimationStep.
	boardDrawOffset := boardDrawOffset + animationStep.	
	"gameboardFocus := (gameboardFocus + animationStep@animationStep)    .	"
	"Transcript show:'--- stepWorld boardDrawOffset = ',boardDrawOffset asString;cr."
	self changed