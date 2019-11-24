accessing
step: gameboard
	| finishedAgendas |
	finishedAgendas := agendas select: [ :agenda | agenda stepAndCheck: gameboard	].