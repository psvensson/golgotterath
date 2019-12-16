action
equipItem
	gamemap gameboard showInventoryFor: self 
		selectWith: [ :item| item kind = 'armour' ]
		onSelect:[ :item |
			Logger log: 'equipItem got selected item';cr.
			gamemap gameboard soundBoard play: 'equip'.
			armour ifNotNil: [ inventory add: item ].
			inventory remove: item.
			self armour: item.
			self changed ] 
		title: 'Equip Armor'