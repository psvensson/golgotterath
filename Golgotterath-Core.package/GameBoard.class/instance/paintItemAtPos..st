drawing
paintItemAtPos: worldpos
		self gameMap itemAt: worldpos ifPresent: [ :item | | i|
			item boardPosition: worldpos.
			i := item sprite paint: self.
			self addMorph: i.
			"item sprite image borderColor: (Color yellow); borderWidth: 1."
			
			"self paintOverlappingEntity: worldpos ."
		]
		