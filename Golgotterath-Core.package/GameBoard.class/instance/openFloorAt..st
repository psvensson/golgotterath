accessing
openFloorAt: target
	| tile entity cname |
	tile := gameMap mapAt: target.
	entity := gameMap entitiesAt: target ifAbsent: [].
	cname := tile name.
	"Transcript show: 'openFloorAt ',target asString,' entity: ',entity asString;cr."
	^ (cname findString: 'floor') > 0 and: (entity isNil)
	 