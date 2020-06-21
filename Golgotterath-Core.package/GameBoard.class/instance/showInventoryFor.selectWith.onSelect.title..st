inventory
showInventoryFor: entity selectWith: selectBlock onSelect: aBlock title: title
	| list items |
	Logger
		log: 'Showing inventory for player';
		cr.
	soundBoard play: 'misc3'.
	list := IconListPresenter new.
	items := entity inventory select: selectBlock.
	list
		
		items: items;
		icons: [ :item | item sprite image ];
		title: title;
		whenSelectedItemChanged: [ :changedItem | 
			inventorylist close.
			Logger
				log: 'showInvetoryFor item selected: ';
				log: changedItem;
				cr.
			aBlock value: changedItem ].
	inventorylist := list openWithSpec