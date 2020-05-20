path
createDijkstraGraphAt: origo radius: radius
	| rows graph |
	graph := EasyStar new.	
	graph offset: (origo x - radius)@(origo y - radius).
	graph acceptableTiles: { 0 }.
	graph diagonalsEnabled: true.
	"Logger log:'creating graph from ';log:origo x - radius;log:',';log:origo y - radius;log:' to ';log:
	 origo x + radius;log:',';log:origo y + radius;cr."
	rows := OrderedCollection new.
	origo y - radius to: origo y + radius do: [ :y | 
		| row |
		row := OrderedCollection new.
		rows add: row.
		origo x - radius to: origo x + radius do: [ :x | 
			| tile |
			tile := self mapAt: x @ y.
			(self isWalkable: tile)
				ifTrue: [ row add: 0 ]
				ifFalse: [ row add: 1 ] ] ].
	graph setGrid: rows.	
	^ graph