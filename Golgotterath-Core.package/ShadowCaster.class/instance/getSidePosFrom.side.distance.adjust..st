accessing
getSidePosFrom: pos side: side distance: distance adjust: adjust

	| horizontalAxis verticalForward sidepos horizontalX |
	horizontalAxis := side at: #horizontal.
	horizontalX := horizontalAxis = #x.
	verticalForward := side at: #verticalforward.
	horizontalX
		ifTrue: [ sidepos := Point x:adjust y: pos y + (distance * verticalForward) ]
		ifFalse: [ sidepos := Point x: pos x + (distance * verticalForward) y: adjust ].
	"Transcript
		show: 'sidepos=' , sidepos asString , ' verticalForward='
			, verticalForward asString , ', adjust=' , adjust asString
			, ' distance=' , distance asString , ' horizontalX='
			, horizontalX asString;
		cr."
	^ sidepos