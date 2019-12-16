testing
openFloorAt: target for: entity
	| tile cname |
	gameMap entitiesAt: target ifPresent: [:e | 
		e = entity ifFalse: [ 
			 Logger log:'openFloorAt: ';log:target;log:' occupied by entity ';log:e;cr.
			^ false]].	
	tile := gameMap mapAt: target.
	cname := tile name.
	(cname findString: 'floor') > 0 ifTrue: [ 
		Logger log:'openFloorAt: ';log:target;log:' is floor';cr.
		 ^ true] ifFalse: [ ^ false ]
	