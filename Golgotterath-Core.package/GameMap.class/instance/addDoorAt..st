initialization
addDoorAt: door
	| tile sprite |
	"Don't add door if there's no walls to put it inbetween"
	(self isBetweenWalls: door)
		ifTrue: [ sprite := DoorSprite new.
			sprite
				rotated: (dungeon mapAt: (door x + 1) @ door y) = 1;
				rotated: (dungeon mapAt: (door x + 1) @ door y) = 1;
				close.
			tile := GameTile new.
			tile
				sprite: sprite;
				boardPosition: door x @ door y.
			map at: door x @ door y put: tile ]