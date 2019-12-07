showing
showInventoryFor: entity
| list |
	Logger log: 'Showing inventory for player';cr.
	"inventorylist := InventoryList new openWithSpec."
	
	list := ListPresenter new.
	list
	items: (entity inventory collect: [ :item| item longname ]);
	title: 'Registered colors';
	whenSelectedItemChanged: [ :changedItem | 
		Logger log: 'showInvetoryFor item selected: '; log: changedItem ;cr.
		].
	inventorylist := list openWithSpec
	