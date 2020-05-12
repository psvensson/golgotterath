testing
openFloorAt: target for: entity
	| tile cname |
	self gameMap entitiesAt: target ifPresent: [:e | 
		e = entity ifFalse: [ 
			 "Logger log:'openFloorAt: ';log:target;log:' occupied by entity ';log:e;cr."
			^ false]].	
	tile := self gameMap mapAt: target.
	cname := tile name.
	"Logger log:'openFloorAt: ';log:target;log:' name = ',cname;cr."
	(cname findString: 'door') > 0ifTrue: [ Logger log:'openFloorAt: ';log:target;log:' is door open = ',(tile isOpen asString);cr. ^ tile isOpen ].
	(cname findString: 'floor') > 0 ifTrue: [ 
		"Logger log:'openFloorAt: ';log:target;log:' is floor';cr."
		 ^ true] ifFalse: [ ^ false ]
	