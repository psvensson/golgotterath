inventory
showInventoryFor: entity selectWith: selectBlock onSelect: aBlock

	inventoryShown := true.
	soundBoard play: 'misc3'.
	self addMorphFront: inventoryPanel.
	inventoryPanel
		title: 'Inventory';
		position: self position + (25 @ 25).
	inventoryPanel listCollection: (entity inventory select: selectBlock).
	inventoryPanel onItemSelected: [ :changedItem | 
		self removeMorph: inventoryPanel.
		inventoryShown := false.
		Logger
			log: 'showInvetoryFor item selected: ';
			log: changedItem;
			cr.
		aBlock value: changedItem ]