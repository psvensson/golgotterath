accessing
paintItemAtPos: worldpos canvas: aCanvas
		gameMap itemAt: worldpos ifPresent: [ :item |
			item boardPosition: worldpos.
			"item sprite image borderColor: (Color yellow); borderWidth: 1."
			item sprite paint: self at: aCanvas.
			self paintOverlappingEntity: worldpos at: aCanvas.
		]
		