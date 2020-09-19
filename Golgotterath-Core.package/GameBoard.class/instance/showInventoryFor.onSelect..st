inventory
showInventoryFor: entity onSelect: aBlock
	soundBoard play: 'misc3'.
	self addMorphFront: inventoryPanel.
	inventoryPanel position: self position.
	inventoryPanel listCollection: entity inventory.
	inventoryPanel
		onItemSelected: [ :changedItem | 
			self removeMorph: inventoryPanel.
			Logger
				log: 'showInvetoryFor item selected: ';
				log: changedItem;
				cr.
			aBlock value: changedItem ]