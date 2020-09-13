action
moveOnMap: gamemap
	"returns true if the event should be removed, false of it should continue"

	| destination |
	Transcript
		show:
			'MidAirEvent moveOnMap. speed = ' , speed asString , ' timespan = '
				, timespan asString;
		cr.
	timespan := timespan - 1.
	timespan = 0
		ifTrue: [ ^ true ].
	destination := self destinationForDirection.
	self referenceObject boardPosition: destination.
	self
		getWall: destination
		gamemap: gamemap
		then: [ :wall | 
			wall
				ifNotNil: [ self effectOnWall: wall gameMap: gamemap.
					^ true ] ].
	self
		getEntity: destination
		gamemap: gamemap
		then: [ :entity | 
			entity isNotNil
				ifTrue: [ self effectOnEntity: entity gameMap: gamemap.
					^ true ] ].
	^ false