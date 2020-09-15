initialization
isAreaFree: area direction: d
	| rv |
	rv := true.
	
	self iterateArea: area  direction: d edge: 1 do: [ :ix :iy | (self mapAt: ix @ iy) = 1 ifTrue: [ 
			"Transcript show:'isAreaFree found collission at ',(ix@iy) asString;cr."
			rv := false ] ].
	"Transcript show:'----------------------------- isAreaFree dir = ',d,' returns ',rv asString;cr."
	^ rv