initialization
addDoorAt: door
	| tileSprite |
	tileSprite := DoorSprite new.
	tileSprite
		boardPosition: door x @ door y;
		rotated: (dungeon mapAt: (door x + 1) @ door y) = 1;
		close.
	map at: door x @ door y put: tileSprite