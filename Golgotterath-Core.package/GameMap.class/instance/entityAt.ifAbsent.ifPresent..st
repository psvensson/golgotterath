accessing
entityAt: pos ifAbsent: aBlock ifPresent: anotherBlock
	entities at:pos ifAbsent: aBlock value.
	"Logger log: 'gamemap entitiesAt: entity was: ';log:entity;cr."
	entities at:pos ifPresent: [ :v | anotherBlock value: v ].