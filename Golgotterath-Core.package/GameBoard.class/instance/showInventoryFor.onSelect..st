inventory
showInventoryFor: entity onSelect: aBlock

	soundBoard play: 'misc3'.
	inventoryShown := true.
	self addMorphFront: inventoryPanel.
	inventoryPanel
		title: 'Inventory';
		position: self position + (25 @ 25).
	inventoryPanel listCollection: entity inventory.
	inventoryPanel onItemSelected: [ :changedItem | 
		self removeMorph: inventoryPanel.
		inventoryShown := false.
		Logger
			log: 'showInvetoryFor item selected: ';
			log: changedItem;
			cr.
		aBlock value: changedItem ]