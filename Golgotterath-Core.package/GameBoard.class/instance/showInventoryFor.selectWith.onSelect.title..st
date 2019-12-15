inventory
showInventoryFor: entity selectWith: selectBlock onSelect: aBlock title: title
| list |
	Logger log: 'Showing inventory for player';cr.
	"inventorylist := InventoryList new openWithSpec."
	soundBoard play: 'misc3'.
	list := IconListPresenter new.
	list
		items: (entity inventory select: selectBlock);
		icons: [ :item | item sprite image];
	title: title;
	whenSelectedItemChanged: [ :changedItem | 
		inventorylist close.
		Logger log: 'showInvetoryFor item selected: '; log: changedItem ;cr.
		aBlock value:changedItem .
		].
	inventorylist := list openWithSpec
	