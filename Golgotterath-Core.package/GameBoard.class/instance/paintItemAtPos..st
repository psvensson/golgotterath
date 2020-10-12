drawing
paintItemAtPos: worldpos
		self gameMap itemAt: worldpos ifPresent: [ :item | | i |			
			i := item sprite paint: self boardPosition: worldpos.
			self addMorph: i.
		]
		