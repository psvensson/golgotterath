action
dropItemFor: entity
	self showInventoryFor: entity onSelect:[ :item |
		"Logger log: 'dropItem got selected item';cr."
		entity drop: item.
		self changed ] 