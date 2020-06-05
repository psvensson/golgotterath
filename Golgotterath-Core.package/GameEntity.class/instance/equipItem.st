action
equipItem
	gamemap gameboard
		showInventoryFor: self
		selectWith: [ :item | item kind = 'armour' ]
		onSelect: [ :item | 
			Logger
				log: 'equipItem got selected item';
				cr.
			gamemap gameboard soundBoard play: 'equip'.
			armour
				ifNotNil: [ inventory add: armour.
					ac := ac - (armour attributes at: #dac) ].
			inventory remove: item.
			self armour: item.
			ac := ac + (armour attributes at: #dac).
			self changed ]
		title: 'Equip Armor'.
	self actionHappened