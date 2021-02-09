drawing
paintRedMarkerAtPos: worldpos

	| image |
	redMarker ifNil: [ ^self ].
	redMarker boardPosition = worldpos ifTrue: [ 
		image := redMarker sprite
			         paint: self
			         alpha: 0.71
			         boardPosition: redMarker boardPosition.
		self addMorph: image ]