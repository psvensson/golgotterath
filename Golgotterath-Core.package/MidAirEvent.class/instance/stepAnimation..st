action
stepAnimation: wolrdAnimatioonFrame
	"returns false if the event should be removed, true if it should continue"

	| destination |
	Transcript
		show:
			'MidAirEvent stepAnimation. speed = ' , speed asString
				, ' timespan = ' , timespan asString , '. boardpos='
				, referenceObject boardPosition asString , ' target boardpos='
				, target asString , ' position=' , position asString;
		cr.
	timespan := timespan - 1.
	timespan = 0
		ifTrue: [ gamemap addItem: referenceObject at: lastBoardPosition.
			^ false ].
	lastBoardPosition := self referenceObject boardPosition.
	destination := self destinationForDirection.
	self referenceObject boardPosition: destination.
	self
		getWall: destination
		then: [ :wall | 
			wall
				ifNotNil: [ Transcript
						show: 'event hit wall ' , wall name , ' at ' , wall boardPosition asString;
						cr.
					self effectOnWall: wall.
					^ false ] ].
	self
		getEntity: destination
		then: [ :entity | 
			entity isNotNil
				ifTrue: [ Transcript
						show:
							'event hit entity ' , entity name , ' at '
								, entity boardPosition asString;
						cr.
					self effectOnEntity: entity.
					^ false ] ].
	^ true