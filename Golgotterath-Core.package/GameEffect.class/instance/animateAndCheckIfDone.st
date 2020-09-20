initialization
animateAndCheckIfDone
	"Logger log:'GameEffect animateAndCheckifDone step = ',step asString,' finalstep = ',self finalStep asString;cr."
	self animateEffect.
	^ (step > self finalStep) not.
	