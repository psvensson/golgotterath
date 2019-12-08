showing
showInventoryFor: entity
| list |
	Logger log: 'Showing inventory for player';cr.
	"inventorylist := InventoryList new openWithSpec."
	
	list := IconListPresenter new.
	list
	items: (entity inventory collect: [ :item| item  ]);
	icons: [ :item | item sprite image];
	title: 'Inventory';
	whenSelectedItemChanged: [ :changedItem | 
		Logger log: 'showInvetoryFor item selected: '; log: changedItem ;cr.
		].
	inventorylist := list openWithSpec
	