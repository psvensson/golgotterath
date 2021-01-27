inventory
showInventoryFor: entity selectWith: selectBlock onSelect: aBlock

	soundBoard play: 'misc3'.
	self addMorphFront: inventoryPanel.
	inventoryPanel position: self position + (25 @ 25).
	inventoryPanel listCollection: (entity inventory select: selectBlock).
	inventoryPanel onItemSelected: [ :changedItem | 
		self removeMorph: inventoryPanel.
		Logger
			log: 'showInvetoryFor item selected: ';
			log: changedItem;
			cr.
		aBlock value: changedItem ]