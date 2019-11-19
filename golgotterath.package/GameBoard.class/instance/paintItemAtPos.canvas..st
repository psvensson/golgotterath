accessing
paintItemAtPos: worldpos canvas: aCanvas
		gameMap itemAt: worldpos ifPresent: [ :item |
			item boardpos: worldpos.
			item sprite paint: self at: aCanvas.
			self paintOverlappingEntity: worldpos at: aCanvas.
		].
		