drawing
renderViewport
	self
		iterateOverVisibleArea: [ :pos | 
			| worldpos entity |
			worldpos := self getWorldCoordsFromOffset: pos.
			"Transcript show:'renderViewport: ',worldpos asString;cr."
			self paintTileAtPos: worldpos.
			self paintItemAtPos: worldpos.
			self gameMap
				entityAt: worldpos
				ifPresent: [ entity := self gameMap entityAt: worldpos.
					self paintEntity: entity boardPosition: worldpos] ].
	"self
		iterateOverVisibleAreaBorder:  [ :pos | 
			| worldpos  |
			worldpos := self getWorldCoordsFromOffset: pos.
			self paintDarkness: worldpos 
			].	"
	