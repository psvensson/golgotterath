initialization
createDefaultItems
	"^ [" topbar
		text: 'Creating items...';
		left: 100.
	dungeon rooms
		do: [ :room | 
			self createItemsFromRoom: room ] "] future"

