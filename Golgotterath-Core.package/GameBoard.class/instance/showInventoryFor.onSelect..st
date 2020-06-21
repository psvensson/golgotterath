inventory
showInventoryFor: entity onSelect: aBlock
| list |
	Logger log: 'Showing inventory for player';cr.
	"inventorylist := InventoryList new openWithSpec."
	soundBoard play: 'misc3'.
	list := IconListPresenter new.
	list 
	items: (entity inventory collect: [ :item| item  ]);
	icons: [ :item | item sprite image];
	title: 'Inventory';
	whenSelectedItemChanged: [ :changedItem | 
		inventorylist close.
		Logger log: 'showInvetoryFor item selected: '; log: changedItem ;cr.
		aBlock value:changedItem .
		].
	inventorylist := list openWithSpec
	