accessing
setTargetForDirectionString: dir
	| targetPos |
	targetPos := self getTargetForDirectionString: dir.	
	self target: targetPos