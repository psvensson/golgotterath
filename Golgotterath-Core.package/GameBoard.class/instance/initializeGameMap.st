initialization - private
initializeGameMap
	gameMap := GameMap new.
	gameMap
		createDefaultMap;
		createDefaultEntities;
		createDefaultItems;
		gameboard: self