accessing
openFloorAt: target
	| tile entity cname |
	tile := gameMap mapAt: target.
	entity := nil.
	gameMap entitiesAt: target ifPresent: [:e | entity := e].
	cname := tile name.
	^ (cname findString: 'floor') > 0 and: (entity isNil)
	 