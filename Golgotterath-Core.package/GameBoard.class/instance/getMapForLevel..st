accessing
getMapForLevel: level
	| map |
	map := levels
		at: level
		ifAbsentPut: [ map := GameMap new.
			map
				gameboard: self;
				level: level;
				topbar: topbar;
				createDungeonGeneratorMap;
				createDefaultEntities;
				player: player;
				createDefaultItems;
				yourself ].
	^ map