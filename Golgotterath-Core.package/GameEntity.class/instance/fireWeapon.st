action
fireWeapon
	| projectile |
	(self weapon attributes at: #subtype) = #ranged
		ifFalse: [ ^ self ].
	projectile := self getProjectileForWeapon: self weapon.
	projectile
		ifNil: [ self textEffect: 'Nothing to fire with' ]
		ifNotNil: [ inventory remove: projectile.
			projectile boardPosition: self boardPosition.
			gamemap gameboard projectileToFire: projectile ]