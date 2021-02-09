event handling
mouseMove: anEvent

	| boardPos pos intBoardPos |
	inventoryShown ifTrue: [ 
		self stopStepping.
		^ self ].
	tesselation := self gameboardTesselation.
	scaleFactor := self scaleFactor.
	pos := anEvent position - self centerPoint.
	"- (yellowMarker sprite tileSize * scaleFactor * 1.25)"
	boardPos := GolUtil fromISO: pos / (tesselation * scaleFactor).
	"Adding play boardposition as canvas position instead somwhere?"
	intBoardPos := boardPos x asInteger @ boardPos y asInteger
	               + player boardPosition.

	self removeMorph: yellowMarker sprite image.
	yellowMarker boardPosition: intBoardPos.
	paintMarkers := 3.
	self isStepping ifTrue: [ ^ self ].
	stepTime := 10.
	self startStepping