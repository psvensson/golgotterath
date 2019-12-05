accessing
setTargetForDirectionString: dir
	| targetPos |
	targetPos := self getTargetForDirectionString: dir.	
	"Transcript show: 'setTargetForDirectionString position:',targetPos asString  ;cr."
	self target: targetPos