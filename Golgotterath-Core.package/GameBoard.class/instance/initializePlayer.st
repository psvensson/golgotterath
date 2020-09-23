initialization - private
initializePlayer
	player := self gameMap player.
	player player: true.
	player boardPosition: gameMap getFreeTileFromFirstRoom.