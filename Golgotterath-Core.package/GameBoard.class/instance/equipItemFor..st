action
equipItemFor: entity
	self showInventoryFor: entity 
		selectWith: [ :item| item kind = 'armour' ]
		onSelect:[ :item |
			Logger log: 'equipItem got selected item';cr.
			soundBoard play: 'equip'.
			entity armour ifNotNil: [ entity inventory add: item ].
			entity inventory remove: item.
			entity armour: item.
			self changed ] 
		title: 'Equip Armor'