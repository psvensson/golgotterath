accessing
pruneDoors: doors
	"Remove doors which still do not have correct placement"

	doors
		do: [ :door | 
			(self isBetweenWalls: door)
				ifFalse: [ self addFloorAt: door ] ]