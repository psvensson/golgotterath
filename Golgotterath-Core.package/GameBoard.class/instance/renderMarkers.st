drawing
renderMarkers

	| image |
	yellowMarker ifNotNil: [ 
		yellowMarker boardPosition ifNotNil: [ 
			"Transcript
				show: ' yellowMarker boardPosition is '
					, yellowMarker boardPosition asString;
				cr."
			image := yellowMarker sprite
				         paint: self
				         alpha: 0.71
				         boardPosition: yellowMarker boardPosition.
			self addMorph: image.
			paintMarkers := paintMarkers - 1 ] ]