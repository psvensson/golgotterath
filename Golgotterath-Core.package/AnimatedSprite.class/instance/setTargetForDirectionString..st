accessing
setTargetForDirectionString: dir
	| targetPos |
	targetPos := self getTargetForDirectionString: dir.	
	Logger log:'AnimateSprite ';log:name;log:' setting target position to: ';log:targetPos;cr.	
	self target: targetPos