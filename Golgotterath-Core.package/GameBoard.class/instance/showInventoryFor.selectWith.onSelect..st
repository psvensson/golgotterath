inventory
showInventoryFor: entity selectWith: selectBlock onSelect: aBlock
	| list |	
	soundBoard play: 'misc3'.
	list := IconListPresenter new.
	list		
		items: (entity inventory select: selectBlock);
		icons: [ :item | item sprite image ];
		title: 'Inventory';
		whenSelectedItemChanged: [ :changedItem | 
			inventorylist close.
			Logger
				log: 'showInvetoryFor item selected: ';
				log: changedItem;
				cr.
			aBlock value: changedItem ].
	inventorylist := list openWithSpec