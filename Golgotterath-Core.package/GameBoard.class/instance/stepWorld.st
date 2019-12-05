accessing
stepWorld
	"scroll the viewport either of four ways, if world is animated"	
	boardDrawOffset := self getWorldAnimationStep.	
	self changed