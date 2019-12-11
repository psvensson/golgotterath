accessing
entitiesAt: pos ifAbsent: aBlock ifPresent: anotherBlock
	entities at:pos ifAbsent: [ aBlock ].
	"Logger log: 'gamemap entitiesAt: entity was: ';log:entity;cr."
	entities at:pos ifPresent: [ :v | anotherBlock value: v ].