action
equipItem
	gamemap gameboard
		showInventoryFor: self
		selectWith: [ :item | item kind = 'armour' ]
		onSelect: [ :item | 
			Logger
				log: 'equipItem got selected item';
				cr.
			self equipItem: item  ]
		title: 'Equip Armor'.
	self actionHappened.
	