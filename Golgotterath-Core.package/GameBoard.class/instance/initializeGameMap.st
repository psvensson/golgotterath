initialization - private
initializeGameMap
	| futures |
	topbar
		text: 'Creating gamemap...';
		left: 100.
	gameMap := GameMap new.
	gameMap topbar: topbar.
	gameMap createTiles .
	futures := OrderedCollection new.
	topbar
		text: 'Generating dungeon...';
		left: 100.
	futures add: gameMap createDungeonGeneratorMap .
	futures add: gameMap createDefaultEntities.
	futures add: gameMap createDefaultItems.
	gameMap gameboard: self.
	^ GolUtil futuresAll: futures 