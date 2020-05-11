initialization - private
initializeGameMap
	| futures |
	topbar
		text: 'Creating gamemap...';
		left: 100.
	gameMap := GameMap new.
	gameMap
		gameboard: self;
		level: 1;
		topbar: topbar.
	"futures := OrderedCollection new."
	topbar
		text: 'Generating dungeon...';
		left: 100.
	"futures add: " gameMap createDungeonGeneratorMap.
	"futures add: " gameMap createDefaultEntities.
	player := gameMap createPlayer .
	"futures add: " gameMap createDefaultItems.
	"^ GolUtil futuresAll: futures"