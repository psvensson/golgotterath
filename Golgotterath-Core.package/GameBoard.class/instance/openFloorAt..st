accessing
openFloorAt: target
	| tile entity cname |
	tile := gameMap mapAt: target.
	entity := gameMap entitiesAt: target ifAbsent: [].
	cname := tile name.
	^ (cname findString: 'floor') > 0 and: (entity isNil)
	 