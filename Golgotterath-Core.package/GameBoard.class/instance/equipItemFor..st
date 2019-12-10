action
equipItemFor: entity
	self showInventoryFor: entity onSelect:[ :item |
		Logger log: 'equipItem got selected item';cr.
		entity armour ifNotNil: [ entity inventory add: item ].
		entity inventory remove: item.
		entity armour: item.
		self changed ] 