initialization
createDefaultEntities
	"^ [" topbar
		text: 'Creating entites...';
		left: 100.
	
	dungeon rooms do: [  :room |
		self createEntitiesFromRoom: room ].
	Logger
		log: 'default entities created';
		cr "] future"