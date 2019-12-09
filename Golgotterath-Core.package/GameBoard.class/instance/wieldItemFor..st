action
wieldItemFor: entity
	self showInventoryFor: entity onSelect:[ :item |
		Logger log: 'wieldItem got selected item';cr.
		entity weapon ifNotNil: [ 
			 entity inventory add: item.].
		entity weapon: item.
		self changed ] 