action
dropItemFor: entity
	self showInventoryFor: entity onSelect:[ :item |
		Logger log: 'dropItem got selected item';cr.
		entity inventory remove: item.
		self gameMap addItem: item at: entity boardPosition.
		self changed ] 