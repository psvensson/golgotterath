inventory
showInventoryFor: entity selectWith: selectBlock onSelect: aBlock title: title

	soundBoard play: 'misc3'.
	self addMorphFront: inventoryPanel.
	inventoryPanel position: self position + (25 @ 25).
	inventoryPanel title: title.
	inventoryPanel listCollection: (entity inventory select: selectBlock).
	inventoryPanel onItemSelected: [ :changedItem | 
		Transcript show: ' armor selected';cr.
		self removeMorph: inventoryPanel.
		aBlock value: changedItem ]