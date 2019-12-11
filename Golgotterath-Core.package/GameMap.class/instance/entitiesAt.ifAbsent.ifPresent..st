accessing
entitiesAt: pos ifAbsent: aBlock ifPresent: anotherBlock
	|entity |
	entity := entities at:pos ifAbsent: [
		"Logger log: 'gamemap entitiesAt: entity was absent!';cr."
		aBlock].
	"Logger log: 'gamemap entitiesAt: entity was: ';log:entity;cr."
	entity ifNotNil: [ anotherBlock value:entity ].