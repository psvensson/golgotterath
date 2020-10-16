animations
stepWorld
	| animationStep |
	"TODO: scroll the viewport either of four ways, if world is animated"
	animationStep := self getWorldAnimationStep.
	boardDrawOffset := boardDrawOffset - animationStep.	
	Transcript
		show: '--- stepWorld boardDrawOffset = ' , boardDrawOffset asString,' player direction =  ',player animatedSprite direction asString;
		cr.
	self changed