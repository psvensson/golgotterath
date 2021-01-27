action
dropItem
	gamemap gameboard
		showInventoryFor: self
		onSelect: [ :item | 
			self dropItem: item ].
	