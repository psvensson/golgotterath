accessing
step: gameboard
	| finishedAgendas |
	finishedAgendas := OrderedCollection new.
	agendas do: [ :agenda :index | 
		(agenda stepAndCheck: gameboard) ifTrue: [ finishedAgendas add: index ]	].
	finishedAgendas do: [ :finished | agendas remove: finished ]	