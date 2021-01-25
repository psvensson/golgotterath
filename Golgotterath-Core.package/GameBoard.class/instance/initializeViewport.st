initialization - private
initializeViewport

	viewPort := Dictionary new.
	viewPort at: #top put: -3.
	viewPort at: #left put: -3.
	viewPort at: #bottom put: 3.
	viewPort at: #right put: 3.

	gameboardView := GameBoardView new gameMap: gameMap .