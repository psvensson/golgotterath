drawing
shadowCastCenterFrom: pos side: side distance: distance

	| forward newpos axis verticalX vForward|
	"get current value"
	axis := side at: #vertical.
	vForward := side at: #verticalforward.
	verticalX := axis = #x.
	forward := pos perform: axis asSymbol.
	"increase by distance"
	forward := forward + distance * vForward.
	"save current value again"
	newpos := verticalX
		          ifTrue: [ Point x: forward y: pos y]
		          ifFalse: [ Point x: pos x y: forward ].
	"Transcript
		show: '..returning new center pos ' , newpos asString,' axis ',axis,' forward ',forward asString,' vForward ',vForward asString,' side ',(side at: #name);
		cr."
	^ newpos