initialization
isAreaFree: area direction: d
	| rv |
	rv := true.
	"Transcript show:'----------------------------- isAreaFree dir = ',d;cr."
	self iterateArea: area  direction: d do: [ :ix :iy | (self mapAt: ix @ iy) = 1 ifTrue: [ 
			"Transcript show:'isAreaFree found collission at ',(ix@iy) asString;cr."
			rv := false ] ].
	^ rv