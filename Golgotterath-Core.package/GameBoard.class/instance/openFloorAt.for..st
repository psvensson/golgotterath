testing
openFloorAt: target for: entity
	| tile cname checkentity rv |
	rv := true.	
	checkentity := nil.
	gameMap entitiesAt: target ifPresent: [:e | checkentity := e].	
	rv := checkentity isNil.
	"Logger log:'checkentity is ';log:checkentity;cr."
	gameMap moveTargets at: target ifPresent: [ :floorentity |
		Logger log:'entity on target tile is ';log:floorentity;log:' entity is ';
		log:entity;cr.
		 rv := (entity = floorentity) ].
	tile := gameMap mapAt: target.
	cname := tile name.
	rv := (cname findString: 'floor') > 0 .
	"Logger log:'cname = ';log:cname;log:' rv=';log:rv;cr."
	^ rv