initialization - private
initializeGameMap
	gameMap := GameMap new.
	gameMap
		createBetterDungeonMap;
		createDefaultEntities;
		createDefaultItems;
		gameboard: self