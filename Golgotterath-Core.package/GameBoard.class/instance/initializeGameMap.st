initialization - private
initializeGameMap
	| futures |
	gameMap := GameMap new.
	futures := OrderedCollection new.
	futures add: gameMap createDungeonGeneratorMap .
	futures add: gameMap createDefaultEntities.
	futures add: gameMap createDefaultItems.
	gameMap gameboard: self.
	^ GolUtil futuresAll: futures 