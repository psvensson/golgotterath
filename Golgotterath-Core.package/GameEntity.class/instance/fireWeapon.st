action
fireWeapon
	gamemap gameboard
		showInventoryFor: self
		selectWith: [ :item | item kind = 'weapon' and: item subtype = #ranged ]
		onSelect: [ :item | 
			| projectile |
			projectile := self getProjectileForWeapon: item.
			projectile
				ifNil: [ self textEffect: 'Nothing to fire with' ]
				ifNotNil: [ "inventory remove: item.
				item handleEffectOn: self.
				gamemap gameboard changed" gamemap gameboard projectileToFire: projectile ] ]
		title: 'Wield Weapon'.
	self actionHappened