initialization - private
initializeGameMap
	topbar
		text: 'Creating gamemap...';
		left: 100.
	gameMap := GameMap new.
	gameMap
		gameboard: self;
		level: 1;
		topbar: topbar.
	topbar
		text: 'Generating dungeon...';
		left: 100.
	gameMap createDungeonGeneratorMap.
	"gameMap createDefaultMap ."
	gameMap createDefaultEntities.
	player := gameMap createPlayer.
	gameMap createDefaultItems